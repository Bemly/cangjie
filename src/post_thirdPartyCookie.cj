package bemlyCJWeb

func getThirdPartyCookiePost(): Post {
    return Post(
        "third-party-cookie",
        "Chrome 第三方 Cookie 限制与 Set-Cookie SameSite",
        "2026-06-06",
        "Chrome 133+ 开始限制第三方 cookie，跨站请求需要 SameSite=None; Secure; Partitioned。",
        """
            <p>在开发跨站图片加载功能时，遇到了 Chrome 和 Firefox 对第三方 cookie 处理不一致的问题。本文记录了排查过程和解决方案。</p>

            <h2>问题现象</h2>
            <p>从 <code>bemly.top</code> 加载 <code>bemly-moe.5ddd.com</code> 的图片：</p>
            <ul>
                <li><strong>Firefox</strong>：正常加载，200 OK</li>
                <li><strong>Chrome</strong>：302 重定向，图片加载失败</li>
            </ul>

            <h2>排查过程</h2>
            <h3>1. 对比请求头</h3>
            <p>通过 HAR 文件对比两个浏览器的请求：</p>
            <table>
                <tr><th>浏览器</th><th>Cookie 请求头</th><th>状态码</th></tr>
                <tr><td>Chrome</td><td>空！没带 Cookie</td><td>302 ❌</td></tr>
                <tr><td>Firefox</td><td><code>mode=relay</code> ✅</td><td>200 ✅</td></tr>
            </table>

            <h3>2. 分析原因</h3>
            <p>Chrome 133+ 开始实施 <strong>Third-Party Cookie Phaseout</strong>，默认限制第三方 cookie。</p>
            <p>从 <code>bemly.top</code> 设置的 cookie，对 <code>bemly-moe.5ddd.com</code> 来说是第三方 cookie，被 Chrome 阻止。</p>

            <h2>Set-Cookie 属性详解</h2>
            <h3>SameSite</h3>
            <ul>
                <li><code>SameSite=Lax</code>（默认）：仅同站请求携带 cookie</li>
                <li><code>SameSite=None</code>：允许跨站请求携带 cookie</li>
                <li><code>SameSite=Strict</code>：仅同站请求携带 cookie，且不跟随重定向</li>
            </ul>

            <h3>Secure</h3>
            <p><code>SameSite=None</code> 必须配合 <code>Secure</code> 属性，且必须使用 HTTPS。</p>

            <h3>Partitioned（CHIPS）</h3>
            <p>Chrome 2024+ 要求第三方 cookie 使用 <code>Partitioned</code> 属性（Cookies Having Independent Partitioned State）。</p>
            <pre><code>Set-Cookie: mode=relay; Path=/; SameSite=None; Secure; Partitioned; Max-Age=86400</code></pre>

            <h2>解决方案</h2>
            <h3>1. 服务器端（nginx）</h3>
            <pre><code>add_header 'Set-Cookie' 'mode=relay; Path=/; HttpOnly; SameSite=None; Secure; Partitioned; Max-Age=86400' always;</code></pre>

            <h3>2. 前端（JavaScript）</h3>
            <pre><code>var d = new Date();
d.setTime(d.getTime() + 86400000); // 1天
document.cookie = 'mode=relay; path=/; expires=' + d.toUTCString() + '; samesite=none; secure; partitioned';</code></pre>

            <h3>3. fetch 请求</h3>
            <pre><code>fetch(url, { credentials: 'include' })</code></pre>

            <h2>测试结果</h2>
            <p>测试页面：<a href="https://alanhogan.github.io/web-experiments/3rd/third-party-cookies.html">Third-Party Cookie Test</a></p>
            <ul>
                <li><strong>Response Cookies</strong>（服务器返回的 Set-Cookie）：Chrome ✅ Firefox ✅</li>
                <li><strong>Request Cookies</strong>（请求带的 Cookie）：Chrome ❌ Firefox ✅</li>
            </ul>

            <h2>结论</h2>
            <p>Chrome 133+ 的 Third-Party Cookie Phaseout 导致：</p>
            <ul>
                <li>服务器可以设置第三方 cookie（Response Cookies 正常）</li>
                <li>但 Chrome 不会在跨站请求中携带这些 cookie（Request Cookies 为空）</li>
                <li>即使设置了 <code>SameSite=None; Secure; Partitioned</code>，Chrome 仍然可能阻止</li>
            </ul>
            <p>目前没有完美的解决方案，只能等待 Chrome 完成 Third-Party Cookie Phaseout 后的行为稳定。</p>

            <h2>参考</h2>
            <ul>
                <li><a href="https://developer.chrome.com/blog/cookie-countdown-2024">Chrome Cookie Countdown 2024</a></li>
                <li><a href="https://alanhogan.github.io/web-experiments/3rd/third-party-cookies.html">Third-Party Cookie Test</a></li>
                <li><a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie/SameSite">MDN: SameSite</a></li>
            </ul>
        """
    )
}
