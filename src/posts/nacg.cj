package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNacgPost(): Post {
    return Post(
        "nacg",
        "搜索-輕之國度-專註分享的NACG社群",
        "2021-10-30",
        "原文待补充：搜索-輕之國度-專註分享的NACG社群",
        { b =>
            h2(b, "搜索-輕之國度-專註分享的NACG社群")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.lightnovel.us/search?keywords=%E4%BB%8E%E9%9B%B6%E5%BC%80%E5%A7%8B%E7%9A%84%E9%AD%94%E6%B3%95%E4%B9%A6"), "阅读原文")
        }
    )
}
