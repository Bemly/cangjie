package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApiIssue168SocialsisteryibilibiliPost(): Post {
    return Post(
        "api-issue-168-socialsisteryibilibili",
        "一个推荐api · Issue #168 · SocialSisterYi/bilibili-...",
        "2022-05-01",
        "GitHub Issue：一个推荐api · Issue #168 · SocialSisterYi/bi",
        { b =>
            h2(b, "一个推荐api · Issue #168 · SocialSisterYi/bilibili-...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/SocialSisterYi/bilibili-API-collect/issues/168"), "访问原始链接")
        }
    )
}
