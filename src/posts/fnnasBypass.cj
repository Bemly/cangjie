package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFnnasBypassPost(): Post {
    return Post(
        "fnnas-bypass",
        "飞牛 FN Connect 绕过 nginx 配置回滚",
        "2026-06-06",
        "飞牛 NAS 的 nginx 配置有回滚机制，通过 bpftrace 获取 zip 密码绕过。",
        { b =>
            p(b, "飞牛 NAS 的 FN Connect 远程访问服务很好用，但 nginx 配置有回滚机制，修改后会被自动恢复。本文记录了如何绕过这个限制。")
            h2(b, "问题")
            raw(b, "<p>飞牛的 nginx 配置文件 <code>/usr/trim/nginx/conf/</code> 会被自动回滚。修改后重启 nginx，配置会被恢复成原始状态。</p>")
            h2(b, "回滚机制分析")
            raw(b, "<p>通过 strace 监控 nginx 的文件操作，发现 nginx 在 reload 时会打开 <code>/usr/trim/share/.restore/ng.conf.zip</code> 这个压缩包，用它来恢复配置文件。</p>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113124suhuhu5issu8uzji.avif", "alt", "strace 监控", "style", "max-width:100%"))
            h2(b, "获取压缩包密码")
            raw(b, "<p><code>ng.conf.zip</code> 是带密码的压缩包。通过 bpftrace 跟踪 nginx 的解密调用，获取密码：</p>")
            raw(b, "<pre><code>bpftrace -e 'uprobe:/lib/x86_64-linux-gnu/libarchive.so.13:archive_read_add_passphrase { printf(\"passphrase: %s\\n\", str(arg1)); }'</code></pre>")
            p(b, "然后重启 nginx 触发解密：")
            raw(b, "<pre><code>systemctl restart trim_nginx</code></pre>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113220f2r48lbfsszdzzd4.avif", "alt", "bpftrace 获取密码", "style", "max-width:100%"))
            h2(b, "修改配置")
            p(b, "获取密码后，解压、修改、重新打包：")
            raw(b, "<pre><code>unzip -P '&lt;password&gt;' ng.conf.zip -d ng_conf\n# 修改配置文件\nzip -r -P '&lt;password&gt;' ng_conf_new.zip .\ncp ng_conf_new.zip /usr/trim/share/.restore/ng.conf.zip</code></pre>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113140tyq1cx1gy12ewuuh.avif", "alt", "修改配置", "style", "max-width:100%"))
            h2(b, "FN Connect 的 mode=relay cookie")
            raw(b, "<p>FN Connect 远程访问需要登录，但可以通过设置 <code>mode=relay</code> cookie 绕过。这个 cookie 需要在 nginx 响应中设置：</p>")
            raw(b, "<pre><code>add_header 'Set-Cookie' 'mode=relay; Path=/; SameSite=None; Secure; Partitioned; Max-Age=86400' always;</code></pre>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113256fsss95j0kppp7wj0.avif", "alt", "FN Connect 配置", "style", "max-width:100%"))
            h2(b, "总结")
            raw(b, "<ul><li>飞牛 nginx 配置回滚机制：<code>/usr/trim/share/.restore/ng.conf.zip</code></li><li>绕过方法：bpftrace 获取密码，修改 zip 后替换</li><li>FN Connect 绕过：<code>mode=relay</code> cookie</li><li>Chrome 第三方 cookie 限制：需要 <code>Partitioned</code> 属性</li></ul>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113404qung0i6j6ehelnzz.avif", "alt", "最终效果", "style", "max-width:100%"))
            h2(b, "参考")
            raw(b, "<ul><li><a href=\"https://club.fnnas.com/forum.php?mod=viewthread&tid=36434\">飞牛论坛：解除 trim_nginx 限制</a></li></ul>")
        }
    )
}
