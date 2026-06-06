package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOrangePiOrangePiPost(): Post {
    return Post(
        "orange-pi-orange-pi",
        "开源软件(Orange Pi)-Orange Pi官网-香橙派开发板,开源硬件,开源软件,开源...",
        "2023-08-02",
        "原文待补充：开源软件(Orange Pi)-Orange Pi官网-香橙派开发板,开源硬件,",
        { b =>
            h2(b, "开源软件(Orange Pi)-Orange Pi官网-香橙派开发板,开源硬件,开源软件,开源...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://www.orangepi.cn/html/softWare/oh.html"), "阅读原文")
        }
    )
}
