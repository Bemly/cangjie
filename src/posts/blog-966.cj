package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog966Post(): Post {
    return Post(
        "blog-966",
        "百合の漫画｜カドコミ (コミックウォーカー)",
        "2026-02-13",
        "原文待补充：百合の漫画｜カドコミ (コミックウォーカー)",
        { b =>
            h2(b, "百合の漫画｜カドコミ (コミックウォーカー)")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://comic-walker.com/search/tag/018b8a02-f3d9-7a59-969d-288cb905f0fc"), "阅读原文")
        }
    )
}
