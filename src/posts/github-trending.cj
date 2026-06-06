package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubTrendingPost(): Post {
    return Post(
        "github-trending",
        "中国人霸榜GitHub Trending，国外开发者很无奈",
        "2022-05-28",
        "原文待补充：中国人霸榜GitHub Trending，国外开发者很无奈",
        { b =>
            h2(b, "中国人霸榜GitHub Trending，国外开发者很无奈")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1639399351401265379&wfr=spider&for=pc"), "阅读原文")
        }
    )
}
