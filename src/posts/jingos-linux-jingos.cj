package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJingosLinuxJingosPost(): Post {
    return Post(
        "jingos-linux-jingos",
        "JingOS 基于Linux的移动操作系统-JingOS - 鲸鲮科技",
        "2021-11-18",
        "原文待补充：JingOS 基于Linux的移动操作系统-JingOS - 鲸鲮科技",
        { b =>
            h2(b, "JingOS 基于Linux的移动操作系统-JingOS - 鲸鲮科技")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cn.jingos.com/?ivk_sa=1024320u"), "阅读原文")
        }
    )
}
