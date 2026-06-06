package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSystemdBootArchLinuxPost(): Post {
    return Post(
        "systemd-boot-arch-linux",
        "systemd-boot - Arch Linux 中文维基",
        "2024-07-30",
        "原文待补充：systemd-boot - Arch Linux 中文维基",
        { b =>
            h2(b, "systemd-boot - Arch Linux 中文维基")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wiki.archlinuxcn.org/wiki/Systemd-boot"), "阅读原文")
        }
    )
}
