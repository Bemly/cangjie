package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getThirdPartyCookiePost(): Post {
    return Post(
        "third-party-cookie",
        "Chrome 第三方 Cookie 限制",
        "2026-06-06",
        "Chrome 133+ 开始限制第三方 cookie，跨站请求需要 SameSite=None; Secure; Partitioned。",
        { b =>
            p(b, "在开发跨站图片加载功能时，遇到了 Chrome 和 Firefox 对第三方 cookie 处理不一致的问题。")
            h2(b, "问题现象")
            p(b, "从 bemly.top 加载 bemly-moe.5ddd.com 的图片，Firefox 正常，Chrome 返回 302。")
            h2(b, "解决方案")
            raw(b, "<pre><code>Set-Cookie: mode=relay; Path=/; SameSite=None; Secure; Partitioned; Max-Age=86400</code></pre>")
        }
    )
}
