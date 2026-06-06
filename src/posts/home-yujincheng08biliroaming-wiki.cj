package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHomeYujincheng08biliroamingWikiPost(): Post {
    return Post(
        "home-yujincheng08biliroaming-wiki",
        "Home · yujincheng08/BiliRoaming Wiki",
        "2023-07-19",
        "GitHub Wiki：Home · yujincheng08/BiliRoaming Wiki",
        { b =>
            h2(b, "Home · yujincheng08/BiliRoaming Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/yujincheng08/BiliRoaming/wiki?from_spmid=pgc.bangumi-search.0.0&intentFrom=5#%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%95"), "访问原始链接")
        }
    )
}
