package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYujincheng08biliroamingWikiPost(): Post {
    return Post(
        "yujincheng08biliroaming-wiki",
        "公共解析服务器 · yujincheng08/BiliRoaming Wiki",
        "2022-07-20",
        "GitHub Wiki：公共解析服务器 · yujincheng08/BiliRoaming Wiki",
        { b =>
            h2(b, "公共解析服务器 · yujincheng08/BiliRoaming Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/yujincheng08/BiliRoaming/wiki/%E5%85%AC%E5%85%B1%E8%A7%A3%E6%9E%90%E6%9C%8D%E5%8A%A1%E5%99%A8"), "访问原始链接")
        }
    )
}
