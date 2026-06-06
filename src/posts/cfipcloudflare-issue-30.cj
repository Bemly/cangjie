package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCfipcloudflareIssue30Post(): Post {
    return Post(
        "cfipcloudflare-issue-30",
        "CF的IP访问CloudFlare类网站访问问题 似乎有另辟蹊径的方法 · Issue #30...",
        "2024-09-28",
        "GitHub Issue：CF的IP访问CloudFlare类网站访问问题 似乎有另辟蹊径的方法 · Is",
        { b =>
            h2(b, "CF的IP访问CloudFlare类网站访问问题 似乎有另辟蹊径的方法 · Issue #30...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/zizifn/edgetunnel/issues/301"), "访问原始链接")
        }
    )
}
