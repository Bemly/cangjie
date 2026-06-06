package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSuggestionSupportsHttp3Http3IssuePost(): Post {
    return Post(
        "suggestion-supports-http3-http3-issue",
        "[Suggestion] Supports HTTP/3 / 支持 HTTP3 · Issue...",
        "2024-09-23",
        "GitHub Issue：[Suggestion] Supports HTTP/3 / 支持 HTTP3 ",
        { b =>
            h2(b, "[Suggestion] Supports HTTP/3 / 支持 HTTP3 · Issue...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/chaitin/SafeLine/issues/743"), "访问原始链接")
        }
    )
}
