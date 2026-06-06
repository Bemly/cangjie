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
            p(b, "飞牛 NAS 的 FN Connect 远程访问服务很好用，但 nginx 配置有回滚机制，修改后会被自动恢复。")
            h2(b, "回滚机制分析")
            p(b, "nginx 在 reload 时会打开 /usr/trim/share/.restore/ng.conf.zip 恢复配置文件。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113124suhuhu5issu8uzji.avif", "alt", "strace 监控", "style", "max-width:100%"))
            h2(b, "获取密码")
            p(b, "通过 bpftrace 跟踪 nginx 的解密调用获取密码。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/fnnas-bypass/113220f2r48lbfsszdzzd4.avif", "alt", "bpftrace", "style", "max-width:100%"))
            h2(b, "总结")
            raw(b, "<ul><li>绕过方法：bpftrace 获取密码，修改 zip 后替换</li><li>FN Connect 绕过：mode=relay cookie</li></ul>")
        }
    )
}
