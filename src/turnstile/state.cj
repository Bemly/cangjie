package bemlyCJWeb.turnstile

import std.collection.*
import std.time.*
import stdx.log.*
import stdx.logger.*
import stdx.net.http.*
import stdx.net.tls.*

public class Config {
    public var siteKey: String = ""
    public var turnstileEnabled: Bool = true
    public var maxTokens: Int64 = 20
    public var blockMinutes: Int64 = 20
    public var rateLimitSec: Int64 = 30

    public init() {}
}

public class TurnstileState {
    public var secret: String = ""
    public var validTokens: HashSet<String> = HashSet<String>()
    public var rateLimit: HashMap<String, DateTime> = HashMap<String, DateTime>()
    public var blockUntil: DateTime = DateTime.UnixEpoch

    public init() {}

    public func extractToken(body: String): String {
        let parts = body.split("token=")
        return if (parts.size > 1) { parts[1] } else { "" }
    }

    public func checkCircuitBreaker(now: DateTime, config: Config): String {
        if ((now - blockUntil).toSeconds() < 0) {
            let remain = (blockUntil - now).toSeconds() / 60
            return "blocked for " + remain.toString() + " min"
        }
        if (validTokens.size >= config.maxTokens) {
            validTokens.clear()
            blockUntil = now + Duration.minute * config.blockMinutes
            return "blocked for " + config.blockMinutes.toString() + " min"
        }
        return ""
    }

    public func checkRateLimit(remoteIp: String, now: DateTime, config: Config): String {
        if (rateLimit.contains(remoteIp)) {
            let lastTime = rateLimit.get(remoteIp) ?? now
            if ((now - lastTime).toSeconds() < config.rateLimitSec) {
                return "too many requests"
            }
        }
        rateLimit.add(remoteIp, now)
        return ""
    }

    public func isTokenValid(cookieVal: String): Bool {
        return cookieVal != "" && validTokens.contains(cookieVal)
    }

    public func isCloudflareSuccess(respStr: String): Bool {
        return respStr.contains("\"success\":true") || respStr.contains("\"success\": true")
    }

    public func verify(tokenStr: String, log: SimpleLogger, remoteIp: String, config: Config): Bool {
        if (tokenStr == "" || secret == "") {
            return false
        }

        log.info("turnstile verify from " + remoteIp, [])
        let now = DateTime.nowUTC()

        let cbErr = checkCircuitBreaker(now, config)
        if (cbErr != "") {
            log.warn("turnstile blocked: " + cbErr, [])
            return false
        }

        let rlErr = checkRateLimit(remoteIp, now, config)
        if (rlErr != "") {
            log.warn("turnstile rate limited: " + remoteIp, [])
            return false
        }

        try {
            let tlsConfig = TlsClientConfig()
            let client = ClientBuilder().tlsConfig(tlsConfig).build()
            let bodyStr = "secret=" + secret + "&response=" + tokenStr
            let req = HttpRequestBuilder()
                .method("POST")
                .url("https://challenges.cloudflare.com/turnstile/v0/siteverify")
                .header("Content-Type", "application/x-www-form-urlencoded")
                .body(bodyStr.toArray())
                .build()
            let rsp = client.send(req)
            let rbuf = Array<UInt8>(1024, repeat: 0)
            let rlen = rsp.body.read(rbuf)
            client.close()
            let respStr = String.fromUtf8(rbuf.slice(0, rlen))

            if (isCloudflareSuccess(respStr)) {
                validTokens.add(tokenStr)
                log.info("turnstile verify success", [])
                return true
            } else {
                log.warn("turnstile verify failed: " + respStr, [])
                return false
            }
        } catch (e: Exception) {
            log.error("turnstile verify error: " + e.message, [])
            return false
        }
    }
}
