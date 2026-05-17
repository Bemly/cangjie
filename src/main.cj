package bemlyCJWeb

import soulsoft_web_http.*
import soulsoft_web_routing.*
import soulsoft_web_hosting.*
import soulsoft_extensions_injection.*
import std.collection.*
import stdx.net.http.*
import stdx.net.tls.*


let SITE_KEY = "0x4AAAAAADROLUhcdUv0Yol5"

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
    posts.add(Post(
        "arch-linux-400mb",
        "ECS 400MB 内存安装 Arch Linux",
        "2026-05-15",
        "在阿里云 400MB 内存 ECS 上从零安装 Arch Linux，踩坑 9 个，最终成功。",
        """
            <p>近期将阿里云 ECS 从 Ubuntu 迁移到 Arch Linux，过程中遇到大量踩坑。本文记录了完整的安装过程和 9 个关键错误。</p>
            <h2>环境</h2>
            <ul>
                <li>服务器：阿里云 ECS 400MB RAM, 20GB 磁盘, UEFI 启动</li>
                <li>目标：Arch Linux (滚动发行版)</li>
            </ul>
            <h2>核心踩坑</h2>
            <h3>内存不足 OOM</h3>
            <p>400MB 内存下 zstd 解压直接 OOM。解决：用 gzip 格式 bootstrap，创建 8GB swap。</p>
            <h3>pacstrap 的 unshare 陷阱</h3>
            <p>pacstrap 内部使用 unshare 创建隔离命名空间，swap 在新命名空间内不可访问。解决：绕过 pacstrap，直接用 pacman -r。</p>
            <h3>filesystem 包冲突</h3>
            <p>Arch 的 filesystem 包创建符号链接/目录与 Ubuntu 冲突，--overwrite 对目录无效。解决：宿主机层面 mv 改名。</p>
            <h3>四层转义地狱</h3>
            <p>经过本地 shell → SSH → 远程 shell → bash -c 四层，* 被展开。解决：heredoc 禁止变量展开。</p>
            <p>最终成功安装，系统运行在 216MB 可用内存，swap 几乎未使用。</p>
        """
    ))
    posts.add(Post(
        "kernel-71-rc3-bbr",
        "Kernel 7.1-rc3 + BBR on Arch",
        "2026-05-14",
        "编译 Linux 7.1-rc3 内核，启用 BBR 拥塞控制算法，优化网络性能。",
        """
            <p>在 Arch Linux 上编译并部署了 Linux 7.1-rc3 内核，测试 BBR 拥塞控制算法。</p>
            <h2>编译配置</h2>
            <p>使用 Arch 的 ABS 系统自定义内核包，启用 BBR 相关配置选项。</p>
            <h2>BBR 效果</h2>
            <p>启用 BBR 后，TCP 吞吐量提升约 30%，延迟降低。特别适合跨国网络访问场景。</p>
        """
    ))
    posts.add(Post(
        "cloud-server-journey",
        "Cloud Server Journey",
        "2026-05-13",
        "开始云服务器之旅，记录从选购到部署的全过程。",
        """
            <p>开始使用阿里云 ECS 作为个人服务器，记录从选购、配置到部署第一个应用的全过程。</p>
            <h2>配置选择</h2>
            <p>选择 400MB 内存、20GB SSD 的轻量配置，对于个人博客和实验项目足够。</p>
            <h2>第一个应用</h2>
            <p>部署了基于仓颉语言 + Spire 天擎框架的个人博客，实现全栈仓颉开发。</p>
        """
    ))
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

func turnstilePage(): String {
    var p = "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">"
    p += "<title>人机验证 | 一只蓝莓小果冻</title><style>" + css() + "</style>"
    p += "<script src=\"https://challenges.cloudflare.com/turnstile/v0/api.js\" async defer></script>"
    p += "</head><body><div class=\"turnstile-wrap\"><div class=\"turnstile-box\">"
    p += "<div class=\"logo\">&#x1FAD0;</div><p>请完成人机验证以继续访问</p>"
    p += "<div class=\"cf-turnstile\" data-sitekey=\"" + SITE_KEY + "\" data-callback=\"onTurnstileDone\"></div>"
    p += "</div></div><script>function onTurnstileDone(token){"
    p += "fetch('/verify-turnstile',{method:'POST',headers:{'Content-Type':'application/x-www-form-urlencoded'},body:'token='+encodeURIComponent(token)})"
    p += ".then(function(r){if(r.ok)location.reload();else alert('验证失败，请刷新重试')})}"
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
    return "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"><title>" + title + " | 一只蓝莓小果冻</title><style>" + css() + "</style></head><body>" + body + footer() + "</body></html>"
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

main(args: Array<String>): Int64 {
    initPosts()

    let secret = if (args.size > 0) { args[0] } else { "" }

    let builder = WebHost.createBuilder(args)
    builder.services.addRouting()
    let host = builder.build()
    host.useRouting()

    host.mapGet("/") { context =>
        if (context.request.cookies.get("cj_token") != None) {
            context.response.write(renderHome())
        } else {
            context.response.write(turnstilePage())
        }
    }

    host.mapGet("/post/{slug}") { context =>
        if (context.request.cookies.get("cj_token") != None) {
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
        var parts = rawBody.split("token=")
        var tokenStr = if (parts.size > 1) { parts[1] } else { "" }
        if (tokenStr == "" || secret == "") {
            context.response.statusCode = 400
            context.response.write("bad request")
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
        if (respStr.contains("\"success\":true") || respStr.contains("\"success\": true")) {
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

    host.run("http://127.0.0.1:996")
    return 0
}
