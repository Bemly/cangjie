package bemlyCJWeb

import html_builder.*

func getKernel71rc3bbrPost(): Post {
    return Post(
        "kernel-71-rc3-bbr",
        "Kernel 7.1-rc3 + BBR on Arch",
        "2026-05-14",
        "编译 Linux 7.1-rc3 内核，启用 BBR 拥塞控制算法，优化网络性能。",
        { b =>
            p(b, "在 Arch Linux 上编译并部署了 Linux 7.1-rc3 内核，测试 BBR 拥塞控制算法。")
            h2(b, "编译配置")
            p(b, "使用 Arch 的 ABS 系统自定义内核包，启用 BBR 相关配置选项。")
            h2(b, "BBR 效果")
            p(b, "启用 BBR 后，TCP 吞吐量提升约 30%，延迟降低。特别适合跨国网络访问场景。")
        }
    )
}
