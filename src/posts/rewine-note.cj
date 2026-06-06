package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRewineNotePost(): Post {
    return Post(
        "rewine-note",
        "关于蓝桥杯等算法竞赛的经验总结 - REWINE NOTE",
        "2025-04-04",
        "原文待补充：关于蓝桥杯等算法竞赛的经验总结 - REWINE NOTE",
        { b =>
            h2(b, "关于蓝桥杯等算法竞赛的经验总结 - REWINE NOTE")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wineee.github.io/post/lanqiaobie/"), "阅读原文")
        }
    )
}
