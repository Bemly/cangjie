package bemlyCJWeb

import html_builder.*

func getThirdPartyCookiePost(): Post {
    return Post(
        "third-party-cookie",
        "Chrome 第三方 Cookie 限制与 Set-Cookie SameSite",
        "2026-06-06",
        "Chrome 133+ 开始限制第三方 cookie，跨站请求需要 SameSite=None; Secure; Partitioned。",
        { b =>
            p(b, "在开发跨站图片加载功能时，遇到了 Chrome 和 Firefox 对第三方 cookie 处理不一致的问题。")
            h2(b, "问题现象")
            p(b, "从 bemly.top 加载 bemly-moe.5ddd.com 的图片，Firefox 正常，Chrome 返回 302。")
            h2(b, "排查过程")
            p(b, "通过 HAR 文件对比，Chrome 的 Cookie 请求头为空，Firefox 有 mode=relay。")
            h2(b, "Set-Cookie 属性详解")
            raw(b, "<ul><li><code>SameSite=Lax</code>（默认）：仅同站请求携带 cookie</li><li><code>SameSite=None</code>：允许跨站请求携带 cookie</li><li><code>Secure</code>：必须配合 HTTPS</li><li><code>Partitioned</code>：Chrome 2024+ 要求的第三方 cookie 属性</li></ul>")
            h2(b, "解决方案")
            raw(b, "<pre><code>Set-Cookie: mode=relay; Path=/; SameSite=None; Secure; Partitioned; Max-Age=86400</code></pre>")
            h2(b, "参考")
            raw(b, "<ul><li><a href=\"https://developer.chrome.com/blog/cookie-countdown-2024\">Chrome Cookie Countdown 2024</a></li><li><a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie/SameSite\">MDN: SameSite</a></li></ul>")
        }
    )
}
