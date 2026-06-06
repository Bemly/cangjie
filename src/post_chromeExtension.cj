package bemlyCJWeb

import html_builder.*

func getChromeExtensionPost(): Post {
    return Post(
        "chrome-extension",
        "Chrome 扩展：绕过第三方 Cookie 限制加载图床图片",
        "2026-06-06",
        "Chrome 133+ 限制第三方 Cookie，写了个扩展用 chrome.cookies.set API 绕过。",
        html {
            p("Chrome 133+ 的 Third-Party Cookie Phaseout 导致从 bemly.top 无法设置 bemly-moe.5ddd.com 的 cookie，图床图片加载失败。Firefox 可以正常工作，但 Chrome 不行。")
            h2("问题分析")
            p("从 bemly.top 页面发起请求到 bemly-moe.5ddd.com（图床），这是跨站请求。Chrome 133+ 默认限制第三方 cookie，即使设置了 SameSite=None; Secure; Partitioned，Chrome 仍然不会在请求中携带 cookie。")
            p("而 Firefox 没有这个限制，可以正常携带 cookie。")
            h2("解决方案")
            p("Chrome 扩展可以使用 chrome.cookies.set API 设置任意域的 cookie，不受第三方 cookie 限制。")
            h3("扩展结构")
            raw("<pre><code>chrome-extension/\n├── manifest.json        # 扩展配置\n├── background.js        # 后台脚本，设置 cookie\n├── content.js           # 内容脚本，检测验证\n└── icons/\n    └── icon.png         # 扩展图标</code></pre>")
            h3("manifest.json")
            raw("<pre><code>{\n  \"manifest_version\": 3,\n  \"name\": \"Bemly Image Bed Helper\",\n  \"permissions\": [\"cookies\"],\n  \"host_permissions\": [\"https://bemly-moe.5ddd.com/*\"],\n  \"background\": { \"service_worker\": \"background.js\" },\n  \"content_scripts\": [{\n    \"matches\": [\"https://bemly.top/*\"],\n    \"js\": [\"content.js\"]\n  }]\n}</code></pre>")
            h3("background.js")
            p("使用 chrome.cookies.set 设置 cookie：")
            raw("<pre><code>function setRelayCookie() {\n  chrome.cookies.set({\n    url: \"https://bemly-moe.5ddd.com/\",\n    name: \"mode\",\n    value: \"relay\",\n    path: \"/\",\n    secure: true,\n    sameSite: \"no_restriction\",\n    expirationDate: Math.floor(Date.now() / 1000) + 86400\n  });\n}</code></pre>")
            h3("content.js")
            p("检测 Turnstile 验证完成，设置 cookie 后重新加载图片：")
            raw("<pre><code>function checkTurnstile() {\n  // 如果在安装页面，跳转到首页\n  if (window.location.pathname === '/install-extension') {\n    chrome.runtime.sendMessage({ action: \"setCookie\" }, (response) => {\n      if (response && response.success) {\n        window.location.href = '/';\n      }\n    });\n    return;\n  }\n\n  // 检测是否有 data-src 图片\n  const images = document.querySelectorAll('img[data-src]');\n  if (images.length > 0) {\n    chrome.runtime.sendMessage({ action: \"setCookie\" }, (response) => {\n      if (response && response.success) {\n        images.forEach(img => { img.src = img.dataset.src; });\n      }\n    });\n  }\n}</code></pre>")
            h2("用户流程")
            raw("<ol><li>用户访问 bemly.top，完成 Turnstile 验证</li><li>Chrome 用户跳转到 /install-extension 页面</li><li>页面显示两个选择：安装扩展 或 下载 Firefox</li><li>安装扩展后，自动跳转到首页</li><li>扩展设置 cookie，图片正常加载</li></ol>")
            h2("踩坑记录")
            h3("1. Chrome 第三方 Cookie 限制")
            p("Chrome 133+ 默认限制第三方 cookie，即使设置了 SameSite=None; Secure; Partitioned，仍然不会在跨站请求中携带。")
            h3("2. document.cookie 只能设置当前域")
            p("document.cookie = 'mode=relay; path=/; ...' 只能设置 bemly.top 的 cookie，不能设置 bemly-moe.5ddd.com 的 cookie。")
            h3("3. chrome.cookies.set 可以设置任意域")
            p("Chrome 扩展的 chrome.cookies.set API 可以设置任意域的 cookie，不受第三方 cookie 限制。")
            h2("参考")
            raw("<ul><li><a href=\"https://developer.chrome.com/blog/cookie-countdown-2024\">Chrome Cookie Countdown 2024</a></li><li><a href=\"https://developer.chrome.com/docs/extensions/reference/api/cookies\">Chrome Extensions: cookies API</a></li><li><a href=\"https://bemly.top/post/third-party-cookie\">Chrome 第三方 Cookie 限制</a></li></ul>")
        }
    )
}
