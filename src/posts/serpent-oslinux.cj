package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSerpentOslinuxPost(): Post {
    return Post(
        "serpent-oslinux",
        "认识Serpent OS：正在开发的真正现代的Linux发行版 - Linux迷",
        "2025-01-07",
        "原文待补充：认识Serpent OS：正在开发的真正现代的Linux发行版 - Linux迷",
        { b =>
            h2(b, "认识Serpent OS：正在开发的真正现代的Linux发行版 - Linux迷")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.linuxmi.com/serpent-os-linux.html"), "阅读原文")
        }
    )
}
