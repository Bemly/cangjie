package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getChromeExtensionPost(): Post {
    return Post(
        "chrome-extension",
        "Chrome 扩展：绕过第三方 Cookie 限制",
        "2026-06-06",
        "Chrome 133+ 限制第三方 Cookie，写了个扩展用 chrome.cookies.set API 绕过。",
        { b =>
            p(b, "Chrome 133+ 的 Third-Party Cookie Phaseout 导致从 bemly.top 无法设置 bemly-moe.5ddd.com 的 cookie。")
            h2(b, "解决方案")
            p(b, "Chrome 扩展可以使用 chrome.cookies.set API 设置任意域的 cookie。")
            h3(b, "background.js")
            raw(b, "<pre><code>chrome.cookies.set({\n  url: \"https://bemly-moe.5ddd.com/\",\n  name: \"mode\",\n  value: \"relay\",\n  secure: true,\n  sameSite: \"no_restriction\"\n});</code></pre>")
            h2(b, "用户流程")
            raw(b, "<ol><li>访问 bemly.top，完成 Turnstile 验证</li><li>Chrome 用户跳转到 /install-extension</li><li>安装扩展后自动跳转首页</li></ol>")
        }
    )
}
