package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNacg2Post(): Post {
    return Post(
        "nacg-2",
        "搜索-轻之国度-专注分享的NACG社群",
        "2022-04-30",
        "原文待补充：搜索-轻之国度-专注分享的NACG社群",
        { b =>
            h2(b, "搜索-轻之国度-专注分享的NACG社群")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.lightnovel.us/cn/search?keywords=%E4%B8%BA%E4%BA%86%E5%A5%B3%E5%84%BF,%E6%88%91%E8%AF%B4%E4%B8%8D%E5%AE%9A%E8%BF%9E%E9%AD%94%E7%8E%8B%E9%83%BD%E8%83%BD%E5%B9%B2%E6%8E%89"), "阅读原文")
        }
    )
}
