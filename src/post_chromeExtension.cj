package bemlyCJWeb

func getChromeExtensionPost(): Post {
    return Post(
        "chrome-extension",
        "Chrome 扩展：绕过第三方 Cookie 限制加载图床图片",
        "2026-06-06",
        "Chrome 133+ 限制第三方 Cookie，写了个扩展用 chrome.cookies.set API 绕过。",
        """
            <p>Chrome 133+ 的 Third-Party Cookie Phaseout 导致从 <code>bemly.top</code> 无法设置 <code>bemly-moe.5ddd.com</code> 的 cookie，图床图片加载失败。Firefox 可以正常工作，但 Chrome 不行。</p>

            <h2>问题分析</h2>
            <p>从 <code>bemly.top</code> 页面发起请求到 <code>bemly-moe.5ddd.com</code>（图床），这是跨站请求。Chrome 133+ 默认限制第三方 cookie，即使设置了 <code>SameSite=None; Secure; Partitioned</code>，Chrome 仍然不会在请求中携带 cookie。</p>
            <p>而 Firefox 没有这个限制，可以正常携带 cookie。</p>

            <h2>解决方案</h2>
            <p>Chrome 扩展可以使用 <code>chrome.cookies.set</code> API 设置任意域的 cookie，不受第三方 cookie 限制。</p>

            <h3>扩展结构</h3>
            <pre><code>chrome-extension/
├── manifest.json        # 扩展配置
├── background.js        # 后台脚本，设置 cookie
├── content.js           # 内容脚本，检测验证
└── icons/
    └── icon.png         # 扩展图标</code></pre>

            <h3>manifest.json</h3>
            <pre><code>{
  "manifest_version": 3,
  "name": "Bemly Image Bed Helper",
  "permissions": ["cookies"],
  "host_permissions": ["https://bemly-moe.5ddd.com/*"],
  "background": { "service_worker": "background.js" },
  "content_scripts": [{
    "matches": ["https://bemly.top/*"],
    "js": ["content.js"]
  }]
}</code></pre>

            <h3>background.js</h3>
            <p>使用 <code>chrome.cookies.set</code> 设置 cookie：</p>
            <pre><code>function setRelayCookie() {
  chrome.cookies.set({
    url: "https://bemly-moe.5ddd.com/",
    name: "mode",
    value: "relay",
    path: "/",
    secure: true,
    sameSite: "no_restriction",
    httpOnly: false,
    expirationDate: Math.floor(Date.now() / 1000) + 86400
  });
}</code></pre>

            <h3>content.js</h3>
            <p>检测 Turnstile 验证完成，设置 cookie 后重新加载图片：</p>
            <pre><code>function checkTurnstile() {
  // 如果在安装页面，跳转到首页
  if (window.location.pathname === '/install-extension') {
    chrome.runtime.sendMessage({ action: "setCookie" }, (response) => {
      if (response && response.success) {
        window.location.href = '/';
      }
    });
    return;
  }

  // 检查是否已经验证
  const cookies = document.cookie.split(';');
  const hasToken = cookies.some(c => c.trim().startsWith('cj_token='));

  if (hasToken) {
    chrome.runtime.sendMessage({ action: "setCookie" }, (response) => {
      if (response && response.success) {
        // 重新加载所有 data-src 图片
        document.querySelectorAll('img[data-src]').forEach(img => {
          img.src = img.dataset.src;
        });
      }
    });
  }
}</code></pre>

            <h2>用户流程</h2>
            <ol>
                <li>用户访问 <code>bemly.top</code>，完成 Turnstile 验证</li>
                <li>Chrome 用户跳转到 <code>/install-extension</code> 页面</li>
                <li>页面显示两个选择：安装扩展 或 下载 Firefox</li>
                <li>安装扩展后，自动跳转到首页</li>
                <li>扩展设置 cookie，图片正常加载</li>
            </ol>

            <h2>踩坑记录</h2>
            <h3>1. Chrome 第三方 Cookie 限制</h3>
            <p>Chrome 133+ 默认限制第三方 cookie，即使设置了 <code>SameSite=None; Secure; Partitioned</code>，仍然不会在跨站请求中携带。</p>

            <h3>2. document.cookie 只能设置当前域</h3>
            <p><code>document.cookie = 'mode=relay; path=/; ...'</code> 只能设置 <code>bemly.top</code> 的 cookie，不能设置 <code>bemly-moe.5ddd.com</code> 的 cookie。</p>

            <h3>3. chrome.cookies.set 可以设置任意域</h3>
            <p>Chrome 扩展的 <code>chrome.cookies.set</code> API 可以设置任意域的 cookie，不受第三方 cookie 限制。</p>

            <h2>参考</h2>
            <ul>
                <li><a href="https://developer.chrome.com/blog/cookie-countdown-2024">Chrome Cookie Countdown 2024</a></li>
                <li><a href="https://developer.chrome.com/docs/extensions/reference/api/cookies">Chrome Extensions: cookies API</a></li>
                <li><a href="https://bemly.top/post/third-party-cookie">Chrome 第三方 Cookie 限制</a></li>
            </ul>
        """
    )
}
