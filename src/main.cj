package bemlyCJWeb

import soulsoft_web_http.*
import soulsoft_web_routing.*
import soulsoft_web_hosting.*
import soulsoft_extensions_injection.*
import std.collection.*
import std.convert.*
import std.env.*
import std.time.*
import std.fs.*
import std.io.*
import stdx.log.*
import stdx.logger.*
import stdx.net.http.*
import stdx.net.tls.*


var SITE_KEY = ""
var turnstileEnabled = true
var maxTokens: Int64 = 20
var blockMinutes: Int64 = 20
var rateLimitSec: Int64 = 30
let log = SimpleLogger(getStdOut())
let validTokens = HashSet<String>()
let rateLimit = HashMap<String, DateTime>()
var blockUntil = DateTime.UnixEpoch

class Post {
    var slug: String
    var title: String
    var date: String
    var excerpt: String
    var content: String

    init(slug: String, title: String, date: String, excerpt: String, content: String) {
        this.slug = slug
        this.title = title
        this.date = date
        this.excerpt = excerpt
        this.content = content
    }
}

let posts = ArrayList<Post>()

func initPosts() {
    posts.add(getArchLinux400mbPost())
    posts.add(getKernel71rc3bbrPost())
    posts.add(getCloudServerJourneyPost())
    posts.add(getJavaverseChatPost())
    posts.add(getAzureOpenaiPost())
    posts.add(getFnnasBypassPost())
    posts.add(getThirdPartyCookiePost())
}

func css(): String {
    return """
        *{margin:0;padding:0;box-sizing:border-box}
        body{background:#0a0a10;color:#d4d4d8;font-family:-apple-system,BlinkMacSystemFont,"PingFang SC","Microsoft YaHei","Noto Sans SC",sans-serif;min-height:100vh;line-height:1.8}
        .container{max-width:720px;margin:0 auto;padding:20px}
        header{text-align:center;padding:80px 0 60px}
        header .logo{font-size:64px;margin-bottom:16px}
        header h1{font-size:2rem;color:#fff;font-weight:700;margin-bottom:8px}
        header p{color:#888;font-size:1rem}
        .posts{display:flex;flex-direction:column;gap:20px}
        .post-card{background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px;transition:all .25s;text-decoration:none;display:block;color:inherit}
        .post-card:hover{border-color:rgba(0,255,136,0.3);background:rgba(0,255,136,0.03);transform:translateY(-2px)}
        .post-card h2{font-size:1.25rem;color:#fff;margin-bottom:8px}
        .post-card .date{color:#666;font-size:.85rem;margin-bottom:12px}
        .post-card .excerpt{color:#a0a0a8;line-height:1.7}
        article{max-width:720px;margin:0 auto;padding:40px 20px}
        article h1{font-size:1.8rem;color:#fff;margin-bottom:12px}
        article .date{color:#666;margin-bottom:32px;font-size:.9rem}
        article h2{color:#00ff88;font-size:1.2rem;margin:32px 0 12px}
        article h3{color:#e0e0e0;font-size:1.05rem;margin:24px 0 8px}
        article p{color:#c0c0c8;margin-bottom:16px}
        article ul{color:#c0c0c8;margin:8px 0 16px 24px}
        article li{margin-bottom:4px}
        .back-link{display:inline-block;color:#00ff88;text-decoration:none;margin-bottom:32px;font-size:.9rem;transition:opacity .2s}
        .back-link:hover{opacity:.7}
        footer{text-align:center;padding:60px 20px 40px;color:#555;font-size:.8rem}
        footer .divider{width:40px;height:2px;background:rgba(255,255,255,0.1);margin:0 auto 20px;border-radius:1px}
        .friends{display:flex;justify-content:center;gap:18px;margin-bottom:24px;flex-wrap:wrap}
        .friends a{color:#888;text-decoration:none;transition:color .2s;font-size:.85rem}
        .friends a:hover{color:#00ff88}
        .turnstile-wrap{display:flex;justify-content:center;align-items:center;min-height:100vh}
        .turnstile-box{text-align:center;padding:40px}
        .turnstile-box .logo{font-size:64px;margin-bottom:16px}
        .turnstile-box p{color:#888;margin-bottom:24px;font-size:.95rem}
        @media(max-width:640px){header{padding:60px 0 40px}header h1{font-size:1.5rem}.post-card{padding:20px}}
    """
}

func extractToken(body: String): String {
    var parts = body.split("token=")
    return if (parts.size > 1) { parts[1] } else { "" }
}

func checkCircuitBreaker(now: DateTime): String {
    if ((now - blockUntil).toSeconds() < 0) {
        var remain = (blockUntil - now).toSeconds() / 60
        return "blocked for " + remain.toString() + " min"
    }
    if (validTokens.size >= maxTokens) {
        validTokens.clear()
        blockUntil = now + Duration.minute * blockMinutes
        return "blocked for " + blockMinutes.toString() + " min"
    }
    return ""
}

func checkRateLimit(remoteIp: String, now: DateTime): String {
    if (rateLimit.contains(remoteIp)) {
        var lastTime = rateLimit.get(remoteIp) ?? now
        if ((now - lastTime).toSeconds() < rateLimitSec) {
            return "too many requests"
        }
    }
    rateLimit.add(remoteIp, now)
    return ""
}

func isTokenValid(cookieVal: String): Bool {
    return cookieVal != "" && validTokens.contains(cookieVal)
}

func isCloudflareSuccess(respStr: String): Bool {
    return respStr.contains("\"success\":true") || respStr.contains("\"success\": true")
}

func turnstilePage(): String {
    var p = "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">"
    p += "<title>人机验证 | 一只蓝莓小果冻</title><style>" + css() + "</style>"
    p += "<script src=\"https://challenges.cloudflare.com/turnstile/v0/api.js\" async defer></script>"
    p += "</head><body><div class=\"turnstile-wrap\"><div class=\"turnstile-box\">"
    p += "<div class=\"logo\">&#x1FAD0;</div><p>请完成人机验证以继续访问</p>"
    p += "<div class=\"cf-turnstile\" data-sitekey=\"" + SITE_KEY + "\" data-callback=\"onTurnstileDone\"></div>"
    p += "</div></div><script>function onTurnstileDone(token){"
    p += "fetch('/verify-turnstile',{method:'POST',headers:{'Content-Type':'application/x-www-form-urlencoded'},body:'token='+encodeURIComponent(token)})"
    p += ".then(function(r){if(r.ok){var isChrome=navigator.userAgent.indexOf('Chrome')>-1&&navigator.userAgent.indexOf('Edg')===-1;if(isChrome){window.location.href='/install-extension'}else{location.reload()}}else alert('验证失败，请刷新重试')})}"
    p += "</script></body></html>"
    return p
}

func footer(): String {
    var f = "<footer><div class=\"divider\"></div><div class=\"friends\">"
    f += "<a href=\"https://0xav10086.space/\" target=\"_blank\">0xav10086.space</a>"
    f += "<a href=\"https://bemly.moe/\" target=\"_blank\">bemly.moe</a>"
    f += "</div><p><a href=\"https://beian.miit.gov.cn/\" style=\"color:#555;text-decoration:none\">蜀ICP备2024056996号</a> | "
    f += "由<a href=\"https://cangjie-lang.cn/\" style=\"color:#555;text-decoration:none\">仓颉</a>和"
    f += "<a href=\"https://docs.cangjie-spire.com/\" style=\"color:#555;text-decoration:none\">天擎</a>驱动</p>"
    f += "<p>&copy; 2024-2026 Bemly_</p></footer>"
    return f
}

func layout(title: String, body: String): String {
    var js = "<script>document.addEventListener('DOMContentLoaded',function(){var d=new Date();d.setTime(d.getTime()+86400000);document.cookie='mode=relay;path=/;expires='+d.toUTCString()+';samesite=none;secure;partitioned';document.querySelectorAll('img[data-src]').forEach(function(img){fetch(img.dataset.src,{credentials:'include'}).then(function(r){return r.blob()}).then(function(b){img.src=URL.createObjectURL(b)}).catch(function(){img.src=img.dataset.src})})})</script>"
    return "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"><title>" + title + " | 一只蓝莓小果冻</title><style>" + css() + "</style></head><body>" + body + footer() + js + "</body></html>"
}

func renderHome(): String {
    var body = "<div class=\"container\"><header><div class=\"logo\">&#x1FAD0;</div><h1>一只蓝莓小果冻</h1><p>Bemly_ &mdash; Tech &amp; Life</p></header><div class=\"posts\">"
    for (post in posts) {
        body += "<a class=\"post-card\" href=\"/post/" + post.slug + "\"><h2>" + post.title + "</h2><div class=\"date\">" + post.date + "</div><div class=\"excerpt\">" + post.excerpt + "</div></a>"
    }
    body += "</div></div>"
    return layout("首页", body)
}

func renderPost(slug: String): String {
    for (post in posts) {
        if (post.slug == slug) {
            var body = "<article><a class=\"back-link\" href=\"/\">&larr; 返回首页</a><h1>" + post.title + "</h1><div class=\"date\">" + post.date + "</div>" + post.content + "<p style=\"color:#666;font-size:.85rem;margin-top:32px\">转载请注明出处，好人一生平胸</p></article>"
            return layout(post.title, body)
        }
    }
    return layout("未找到", "<article><a class=\"back-link\" href=\"/\">&larr; 返回首页</a><h1>404</h1><p>文章不存在</p></article>")
}

func parseIntEnv(key: String, default: Int64): Int64 {
    var val = getVariable(key) ?? ""
    if (val == "") { return default }
    try {
        return Int64.parse(val)
    } catch (e: Exception) {
        return default
    }
}

main(args: Array<String>): Int64 {
    initPosts()

    let secret = getVariable("TURNSTILE_SECRET") ?? ""
    SITE_KEY = getVariable("TURNSTILE_SITE_KEY") ?? ""
    turnstileEnabled = (getVariable("TURNSTILE_ENABLE") ?? "true") != "false"
    maxTokens = parseIntEnv("TURNSTILE_MAX_TOKENS", 20)
    blockMinutes = parseIntEnv("TURNSTILE_BLOCK_MINUTES", 20)
    rateLimitSec = parseIntEnv("TURNSTILE_RATE_LIMIT_SEC", 30)

    let builder = WebHost.createBuilder(args)
    builder.services.addRouting()
    let host = builder.build()
    host.useRouting()

    host.mapGet("/") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!turnstileEnabled || isTokenValid(cookieVal)) {
            context.response.write(renderHome())
        } else {
            context.response.write(turnstilePage())
        }
    }

    host.mapGet("/post/{slug}") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!turnstileEnabled || isTokenValid(cookieVal)) {
            let slug = context.request.routeValues.get("slug") ?? ""
            context.response.write(renderPost(slug))
        } else {
            context.response.write(turnstilePage())
        }
    }

    host.mapPost("/verify-turnstile") { context =>
        var buf = Array<UInt8>(4096, repeat: 0)
        var len = context.request.body.read(buf)
        var rawBody = String.fromUtf8(buf.slice(0, len))
        var tokenStr = extractToken(rawBody)
        if (tokenStr == "" || secret == "") {
            context.response.statusCode = 400
            context.response.write("bad request")
            return
        }
        log.info("turnstile verify from " + context.request.remoteAddr, [])
        var now = DateTime.nowUTC()
        var cbErr = checkCircuitBreaker(now)
        if (cbErr != "") {
            log.warn("turnstile blocked: " + cbErr, [])
            context.response.statusCode = 429
            context.response.write(cbErr)
            return
        }
        var rlErr = checkRateLimit(context.request.remoteAddr, now)
        if (rlErr != "") {
            log.warn("turnstile rate limited: " + context.request.remoteAddr, [])
            context.response.statusCode = 429
            context.response.write(rlErr)
            return
        }
        var tlsConfig = TlsClientConfig()
        var client = ClientBuilder().tlsConfig(tlsConfig).build()
        var bodyStr = "secret=" + secret + "&response=" + tokenStr
        var req = HttpRequestBuilder()
            .method("POST")
            .url("https://challenges.cloudflare.com/turnstile/v0/siteverify")
            .header("Content-Type", "application/x-www-form-urlencoded")
            .body(bodyStr.toArray())
            .build()
        var rsp = client.send(req)
        var rbuf = Array<UInt8>(1024, repeat: 0)
        var rlen = rsp.body.read(rbuf)
        client.close()
        var respStr = String.fromUtf8(rbuf.slice(0, rlen))
        if (isCloudflareSuccess(respStr)) {
            validTokens.add(tokenStr)
            log.info("turnstile verify success", [])
            var opts = CookieOptions(
                httpOnly: true,
                secure: true,
                sameSite: CookieSameSiteMode.Lax,
                maxAge: Duration.day
            )
            context.response.cookies.append("cj_token", tokenStr, opts)
            context.response.write("ok")
        } else {
            log.warn("turnstile verify failed: " + respStr, [])
            context.response.statusCode = 403
            context.response.write("forbidden")
        }
    }

    host.mapGet("/install-extension") { context =>
        var p = "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">"
        p += "<title>安装扩展 | 一只蓝莓小果冻</title><style>" + css() + "</style>"
        p += "<meta http-equiv=\"refresh\" content=\"5\">"
        p += "</head><body><div class=\"container\" style=\"padding:40px 20px\">"
        p += "<h1 style=\"color:#fff;margin-bottom:24px\">检测到 Chrome 浏览器</h1>"
        p += "<p style=\"color:#888;margin-bottom:32px\">Chrome 限制第三方 Cookie，图床图片无法加载。请选择：</p>"
        p += "<div style=\"display:flex;gap:24px;flex-wrap:wrap\">"
        p += "<div style=\"flex:1;min-width:280px;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px\">"
        p += "<h2 style=\"color:#00ff88;font-size:1.2rem;margin-bottom:16px\">安装 Chrome 扩展</h2>"
        p += "<ol style=\"color:#c0c0c8;line-height:2\">"
        p += "<li>下载扩展：<a href=\"/chrome-extension.zip\" style=\"color:#00ff88\">chrome-extension.zip</a></li>"
        p += "<li>解压到任意目录</li>"
        p += "<li>打开 Chrome，访问 <code style=\"background:rgba(255,255,255,0.1);padding:2px 8px;border-radius:4px\">chrome://extensions/</code></li>"
        p += "<li>开启「开发者模式」</li>"
        p += "<li>点击「加载已解压的扩展程序」</li>"
        p += "<li>选择解压后的文件夹</li>"
        p += "</ol>"
        p += "<p style=\"color:#888;font-size:.85rem;margin-top:16px\">安装后自动跳转到文章页面</p>"
        p += "</div>"
        p += "<div style=\"flex:1;min-width:280px;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px\">"
        p += "<h2 style=\"color:#e0e0e0;font-size:1.2rem;margin-bottom:16px\">使用 Firefox 浏览器</h2>"
        p += "<p style=\"color:#c0c0c8;line-height:1.7\">Firefox 不限制第三方 Cookie，可以直接访问图床图片。</p>"
        p += "<a href=\"https://www.mozilla.org/firefox/\" target=\"_blank\" style=\"display:inline-block;margin-top:16px;padding:12px 24px;background:rgba(255,255,255,0.1);color:#fff;text-decoration:none;border-radius:8px\">下载 Firefox</a>"
        p += "</div>"
        p += "</div>"
        p += "<p style=\"color:#555;font-size:.8rem;margin-top:32px\">页面每 5 秒自动刷新，检测插件是否已安装</p>"
        p += "</div></body></html>"
        context.response.write(p)
    }

    host.mapGet("/chrome-extension.zip") { context =>
        context.response.headers.cacheControl = ["no-store"]
        context.response.headers.add("Content-Type", "application/zip")
        context.response.headers.add("Content-Disposition", "attachment; filename=\"chrome-extension.zip\"")
        try {
            var file = File("chrome-extension.zip", Read)
            var bytes = readToEnd(file)
            file.close()
            context.response.write(bytes)
        } catch (e: Exception) {
            context.response.statusCode = 404
            context.response.write("File not found")
        }
    }

    host.run("http://127.0.0.1:996")
    return 0
}
