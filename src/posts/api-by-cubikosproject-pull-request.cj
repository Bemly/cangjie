package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApiByCubikosprojectPullRequestPost(): Post {
    return Post(
        "api-by-cubikosproject-pull-request",
        "新增个性化视频推荐api by CubikOSProject · Pull Request #...",
        "2022-05-01",
        "GitHub PR：新增个性化视频推荐api by CubikOSProject · Pull Re",
        { b =>
            h2(b, "新增个性化视频推荐api by CubikOSProject · Pull Request #...")
            p(b, "此链接为 GitHub Pull Request，非博客文章。")
            a(b, attrs("href", "https://github.com/SocialSisterYi/bilibili-API-collect/pull/161"), "访问原始链接")
        }
    )
}
