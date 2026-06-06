package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBugGiteaJavascriptErrorsInFirefoxIssuPost(): Post {
    return Post(
        "bug-gitea-javascript-errors-in-firefox-issu",
        "[Bug] Gitea JavaScript errors in Firefox · Issu...",
        "2024-02-04",
        "GitHub Issue：[Bug] Gitea JavaScript errors in Firefox",
        { b =>
            h2(b, "[Bug] Gitea JavaScript errors in Firefox · Issu...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/darkreader/darkreader/issues/12180"), "访问原始链接")
        }
    )
}
