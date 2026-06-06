package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAmaoThree2Post(): Post {
    return Post(
        "amao-three-2",
        "Amao Three",
        "[https://dev.amao.run/zh/posts/arch-linux-%E4%B8%8B%E4%B8%...](https://dev.amao.run/zh/posts/arch-linux-%E4%B8%8B%E4%B8%A4%E7%A7%8D%E6%8E%A8%E8%8D%90%E7%9A%84bootloader%E4%B8%8Asystemd-boot/)",
        "原文待补充：Amao Three",
        { b =>
            h2(b, "Amao Three")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Arch Linux 下两种推荐的bootloader（上）：sy..."), "阅读原文")
        }
    )
}
