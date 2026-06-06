package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGrub2etcgrubdJasonPost(): Post {
    return Post(
        "grub2etcgrubd-jason",
        "grub2的/etc/grub.d目录下的脚本文件 - Jason‘ - 博客园",
        "2021-10-02",
        "原文待补充：grub2的/etc/grub.d目录下的脚本文件 - Jason‘ - 博客园",
        { b =>
            h2(b, "grub2的/etc/grub.d目录下的脚本文件 - Jason‘ - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/codeblock/p/4295112.html"), "阅读原文")
        }
    )
}
