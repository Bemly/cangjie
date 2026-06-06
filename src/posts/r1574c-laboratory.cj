package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getR1574cLaboratoryPost(): Post {
    return Post(
        "r1574c-laboratory",
        "【R1574】[C-Laboratory] ララと奇妙なダンジョン / 拉拉和神奇迷宫 汉化硬...",
        "2024-08-24",
        "原文待补充：【R1574】[C-Laboratory] ララと奇妙なダンジョン / 拉拉和神",
        { b =>
            h2(b, "【R1574】[C-Laboratory] ララと奇妙なダンジョン / 拉拉和神奇迷宫 汉化硬...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.reimu.net/archives/38800"), "阅读原文")
        }
    )
}
