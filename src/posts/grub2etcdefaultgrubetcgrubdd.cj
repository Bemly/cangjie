package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGrub2etcdefaultgrubetcgrubddPost(): Post {
    return Post(
        "grub2etcdefaultgrubetcgrubdd",
        "GRUB2的配置方法【涉及/etc/default/grub，/etc/grub.d/*】_d...",
        "2021-10-02",
        "原文待补充：GRUB2的配置方法【涉及/etc/default/grub，/etc/grub",
        { b =>
            h2(b, "GRUB2的配置方法【涉及/etc/default/grub，/etc/grub.d/*】_d...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/duanlove/article/details/8066570"), "阅读原文")
        }
    )
}
