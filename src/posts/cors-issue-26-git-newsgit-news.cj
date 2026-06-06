package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCorsIssue26GitNewsgitNewsPost(): Post {
    return Post(
        "cors-issue-26-git-newsgit-news",
        "CORS-跨域资源共享笔记 · Issue #26 · Git-News/Git-News",
        "2024-02-03",
        "GitHub Issue：CORS-跨域资源共享笔记 · Issue #26 · Git-News/Git",
        { b =>
            h2(b, "CORS-跨域资源共享笔记 · Issue #26 · Git-News/Git-News")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/Git-News/Git-News/issues/26"), "访问原始链接")
        }
    )
}
