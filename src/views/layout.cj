package bemlyCJWeb.views

import html_builder.*

public func renderCss(): String {
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

public func renderFooter(b: HtmlBuilder): Unit {
    footer(b) {
        div(b, attrs("class", "divider")) {}
        div(b, attrs("class", "friends")) {
            a(b, attrs("href", "https://0xav10086.space/", "target", "_blank"), "0xav10086.space")
            a(b, attrs("href", "https://bemly.moe/", "target", "_blank"), "bemly.moe")
        }
        raw(b, "<p><a href=\"https://beian.miit.gov.cn/\" style=\"color:#555;text-decoration:none\">蜀ICP备2024056996号</a> | 由<a href=\"https://cangjie-lang.cn/\" style=\"color:#555;text-decoration:none\">仓颉</a>和<a href=\"https://docs.cangjie-spire.com/\" style=\"color:#555;text-decoration:none\">天擎</a>驱动</p>")
        p(b, "© 2024-2026 Bemly_")
    }
}

public func renderLayout(title: String, bodyHtml: String): String {
    let js = "<script>document.addEventListener('DOMContentLoaded',function(){var d=new Date();d.setTime(d.getTime()+86400000);document.cookie='mode=relay;path=/;expires='+d.toUTCString()+';samesite=none;secure;partitioned';document.querySelectorAll('img[data-src]').forEach(function(img){fetch(img.dataset.src,{credentials:'include'}).then(function(r){return r.blob()}).then(function(b){img.src=URL.createObjectURL(b)}).catch(function(){img.src=img.dataset.src})})})</script>"
    let fullTitle = title + " | 一只蓝莓小果冻"
    let styleTag = "<style>" + renderCss() + "</style>"
    let titleTag = "<title>" + fullTitle + "</title>"
    return html { b =>
        head(b) {
            raw(b, titleTag)
            raw(b, styleTag)
        }
        body(b) {
            raw(b, bodyHtml)
            renderFooter(b)
            raw(b, js)
        }
    }
}
