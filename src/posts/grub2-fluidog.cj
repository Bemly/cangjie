package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGrub2FluidogPost(): Post {
    return Post(
        "grub2-fluidog",
        "GRUB2 配置文件详解 - fluidog - 博客园",
        "2021-10-02",
        "原文待补充：GRUB2 配置文件详解 - fluidog - 博客园",
        { b =>
            h2(b, "GRUB2 配置文件详解 - fluidog - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/fluidog/p/15176726.html"), "阅读原文")
        }
    )
}
