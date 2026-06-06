package bemlyCJWeb

import soulsoft_web_http.*
import soulsoft_web_routing.*
import soulsoft_web_hosting.*
import soulsoft_extensions_injection.*
import std.collection.*
import std.env.*
import std.time.*
import std.fs.*
import std.io.*
import stdx.log.*
import stdx.logger.*
import bemlyCJWeb.model.*
import bemlyCJWeb.views.*
import bemlyCJWeb.posts.*
import bemlyCJWeb.turnstile.*

let log = SimpleLogger(getStdOut())
let posts = ArrayList<Post>()
let config = Config()
let turnstileState = TurnstileState()

func initPosts() {
    posts.add(getArchLinux400mbPost())
    posts.add(getKernel71rc3bbrPost())
    posts.add(getCloudServerJourneyPost())
    posts.add(getJavaverseChatPost())
    posts.add(getAzureOpenaiPost())
    posts.add(getFnnasBypassPost())
    posts.add(getThirdPartyCookiePost())
    posts.add(getChromeExtensionPost())
}

func initConfig() {
    config.siteKey = getVariable("TURNSTILE_SITE_KEY") ?? ""
    config.turnstileEnabled = (getVariable("TURNSTILE_ENABLE") ?? "true") != "false"
    config.maxTokens = parseIntEnv("TURNSTILE_MAX_TOKENS", 20)
    config.blockMinutes = parseIntEnv("TURNSTILE_BLOCK_MINUTES", 20)
    config.rateLimitSec = parseIntEnv("TURNSTILE_RATE_LIMIT_SEC", 30)
    turnstileState.secret = getVariable("TURNSTILE_SECRET") ?? ""
}

func parseIntEnv(key: String, default: Int64): Int64 {
    let val = getVariable(key) ?? ""
    if (val == "") { return default }
    try {
        return Int64.parse(val)
    } catch (e: Exception) {
        return default
    }
}

func checkBrowser(context: HttpContext): Bool {
    let ua = context.request.headers.get("User-Agent") ?? ""
    let isSafari = ua.contains("Safari") && !ua.contains("Chrome")
    let isChromium = ua.contains("Chrome")
    let extInstalled = context.request.cookies.get("extension_installed") ?? ""

    if (isSafari) {
        context.response.statusCode = 302
        context.response.headers.add("Location", "/safari-unsupported")
        return false
    } else if (isChromium && extInstalled != "true") {
        context.response.statusCode = 302
        context.response.headers.add("Location", "/install-extension")
        return false
    }
    return true
}

main(args: Array<String>): Int64 {
    initPosts()
    initConfig()

    let builder = WebHost.createBuilder(args)
    builder.services.addRouting()
    let host = builder.build()
    host.useRouting()

    // 首页
    host.mapGet("/") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!config.turnstileEnabled || turnstileState.isTokenValid(cookieVal)) {
            if (checkBrowser(context)) {
                context.response.write(renderHome(posts))
            }
        } else {
            context.response.write(renderTurnstilePage(config))
        }
    }

    // 文章页
    host.mapGet("/post/{slug}") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!config.turnstileEnabled || turnstileState.isTokenValid(cookieVal)) {
            if (checkBrowser(context)) {
                let slug = context.request.routeValues.get("slug") ?? ""
                var found = false
                for (post in posts) {
                    if (post.slug == slug) {
                        context.response.write(renderPost(post))
                        found = true
                        break
                    }
                }
                if (!found) {
                    context.response.write(render404())
                }
            }
        } else {
            context.response.write(renderTurnstilePage(config))
        }
    }

    // Turnstile 验证
    host.mapPost("/verify-turnstile") { context =>
        var buf = Array<UInt8>(4096, repeat: 0)
        var len = context.request.body.read(buf)
        var rawBody = String.fromUtf8(buf.slice(0, len))
        var tokenStr = turnstileState.extractToken(rawBody)

        if (turnstileState.verify(tokenStr, log, context.request.remoteAddr, config)) {
            var opts = CookieOptions(
                httpOnly: true,
                secure: true,
                sameSite: CookieSameSiteMode.Lax,
                maxAge: Duration.day
            )
            context.response.cookies.append("cj_token", tokenStr, opts)
            context.response.write("ok")
        } else {
            context.response.statusCode = 403
            context.response.write("forbidden")
        }
    }

    // 安装扩展页
    host.mapGet("/install-extension") { context =>
        context.response.write(renderInstallExtension())
    }

    // 下载扩展
    host.mapGet("/chrome-extension.zip") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!config.turnstileEnabled || turnstileState.isTokenValid(cookieVal)) {
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
        } else {
            context.response.write(renderTurnstilePage(config))
        }
    }

    // Safari 不支持页
    host.mapGet("/safari-unsupported") { context =>
        context.response.write(renderSafariUnsupported())
    }

    host.run("http://127.0.0.1:996")
    return 0
}
