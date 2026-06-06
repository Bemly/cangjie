package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog846Post(): Post {
    return Post(
        "blog-846",
        "王裕德",
        "[https://itcgs.tcgs.tc.edu.tw/yute?cid=2254](https://itcgs.tcgs.tc.edu.tw/yute?cid=2254)",
        "原文待补充：王裕德",
        { b =>
            h2(b, "王裕德")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "NodeMCU簡介"), "阅读原文")
        }
    )
}
