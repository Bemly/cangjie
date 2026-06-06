package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAddHttpsToWebPagesHttpsIssue1471Post(): Post {
    return Post(
        "add-https-to-web-pages-https-issue-1471",
        "Add https to web pages 为网页加入https · Issue #1471...",
        "2024-09-06",
        "GitHub Issue：Add https to web pages 为网页加入https · Issu",
        { b =>
            h2(b, "Add https to web pages 为网页加入https · Issue #1471...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/IceWhaleTech/CasaOS/issues/1471"), "访问原始链接")
        }
    )
}
