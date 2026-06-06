package bemlyCJWeb

import html_builder.*

func getChromeExtensionPost(): Post {
    return Post(
        "chrome-extension",
        "Chrome 扩展：绕过第三方 Cookie 限制加载图床图片",
        "2026-06-06",
        "Chrome 133+ 限制第三方 Cookie，写了个扩展用 chrome.cookies.set API 绕过。",
        { b =>
            p(b, "Chrome 133+ 的 Third-Party Cookie Phaseout 导致从 bemly.top 无法设置 bemly-moe.5ddd.com 的 cookie，图床图片加载失败。")
            h2(b, "解决方案")
            p(b, "Chrome 扩展可以使用 chrome.cookies.set API 设置任意域的 cookie，不受第三方 cookie 限制。")
            h3(b, "扩展结构")
            raw(b, "<pre><code>chrome-extension/\n├── manifest.json\n├── background.js\n├── content.js\n└── icons/icon.png</code></pre>")
            h3(b, "background.js")
            p(b, "使用 chrome.cookies.set 设置 cookie：")
            raw(b, "<pre><code>chrome.cookies.set({\n  url: \"https://bemly-moe.5ddd.com/\",\n  name: \"mode\",\n  value: \"relay\",\n  path: \"/\",\n  secure: true,\n  sameSite: \"no_restriction\"\n});</code></pre>")
            h3(b, "content.js")
            p(b, "检测 Turnstile 验证完成，设置 cookie 后重新加载图片。")
            h2(b, "用户流程")
            raw(b, "<ol><li>访问 bemly.top，完成 Turnstile 验证</li><li>Chrome 用户跳转到 /install-extension</li><li>安装扩展后自动跳转首页</li><li>扩展设置 cookie，图片正常加载</li></ol>")
            h2(b, "参考")
            raw(b, "<ul><li><a href=\"https://developer.chrome.com/docs/extensions/reference/api/cookies\">Chrome Extensions: cookies API</a></li><li><a href=\"https://bemly.top/post/third-party-cookie\">Chrome 第三方 Cookie 限制</a></li></ul>")
        }
    )
}
