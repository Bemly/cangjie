package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGnuGrubManual206SimpleConfigurationPost(): Post {
    return Post(
        "gnu-grub-manual-206-simple-configuration",
        "GNU GRUB Manual 2.06: Simple configuration",
        "2021-10-02",
        "原文待补充：GNU GRUB Manual 2.06: Simple configurati",
        { b =>
            h2(b, "GNU GRUB Manual 2.06: Simple configuration")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html#Simple-configuration"), "阅读原文")
        }
    )
}
