package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSearchTitleOrCreatorWebtoonPost(): Post {
    return Post(
        "search-title-or-creator-webtoon",
        "Search Title or Creator : WEBTOON",
        "2021-08-17",
        "原文待补充：Search Title or Creator : WEBTOON",
        { b =>
            h2(b, "Search Title or Creator : WEBTOON")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://m.webtoons.com/en/search"), "阅读原文")
        }
    )
}
