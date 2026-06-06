package bemlyCJWeb

import std.env.*
import std.convert.*

public class Config {
    public var siteKey: String = ""
    public var turnstileEnabled: Bool = true
    public var maxTokens: Int64 = 20
    public var blockMinutes: Int64 = 20
    public var rateLimitSec: Int64 = 30

    public init() {
        siteKey = getVariable("TURNSTILE_SITE_KEY") ?? ""
        turnstileEnabled = (getVariable("TURNSTILE_ENABLE") ?? "true") != "false"
        maxTokens = parseIntEnv("TURNSTILE_MAX_TOKENS", 20)
        blockMinutes = parseIntEnv("TURNSTILE_BLOCK_MINUTES", 20)
        rateLimitSec = parseIntEnv("TURNSTILE_RATE_LIMIT_SEC", 30)
    }

    private func parseIntEnv(key: String, default: Int64): Int64 {
        let val = getVariable(key) ?? ""
        if (val == "") { return default }
        try {
            return Int64.parse(val)
        } catch (e: Exception) {
            return default
        }
    }
}
