package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBapiIssue259SocialsisteryibilibiliPost(): Post {
    return Post(
        "bapi-issue-259-socialsisteryibilibili",
        "B站频道的api · Issue #259 · SocialSisterYi/bilibili...",
        "2022-05-01",
        "GitHub Issue：B站频道的api · Issue #259 · SocialSisterYi/b",
        { b =>
            h2(b, "B站频道的api · Issue #259 · SocialSisterYi/bilibili...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/SocialSisterYi/bilibili-API-collect/issues/259"), "访问原始链接")
        }
    )
}
