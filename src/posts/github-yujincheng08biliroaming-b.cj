package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubYujincheng08biliroamingBPost(): Post {
    return Post(
        "github-yujincheng08biliroaming-b",
        "GitHub - yujincheng08/BiliRoaming: 哔哩漫游，解除B站客户端...",
        "2022-05-01",
        "GitHub 仓库：GitHub - yujincheng08/BiliRoaming: 哔哩漫游，",
        { b =>
            h2(b, "GitHub - yujincheng08/BiliRoaming: 哔哩漫游，解除B站客户端...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/yujincheng08/BiliRoaming"), "访问原始链接")
        }
    )
}
