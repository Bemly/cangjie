package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNeogrubLinuxPost(): Post {
    return Post(
        "neogrub-linux",
        "NeoGrub Linux",
        "2022-02-26",
        "原文待补充：NeoGrub Linux",
        { b =>
            h2(b, "NeoGrub Linux")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://neosmart.net/wiki/easybcd/neogrub/linux/"), "阅读原文")
        }
    )
}
