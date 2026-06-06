package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApiIssue364SocialsisteryiPost(): Post {
    return Post(
        "api-issue-364-socialsisteryi",
        "有关安卓端获取首页频道推荐的api · Issue #364 · SocialSisterYi...",
        "2022-05-01",
        "GitHub Issue：有关安卓端获取首页频道推荐的api · Issue #364 · SocialS",
        { b =>
            h2(b, "有关安卓端获取首页频道推荐的api · Issue #364 · SocialSisterYi...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/SocialSisterYi/bilibili-API-collect/issues/364"), "访问原始链接")
        }
    )
}
