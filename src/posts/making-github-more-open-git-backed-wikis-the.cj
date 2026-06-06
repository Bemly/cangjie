package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMakingGithubMoreOpenGitBackedWikisThePost(): Post {
    return Post(
        "making-github-more-open-git-backed-wikis-the",
        "Making GitHub More Open: Git-backed Wikis - The...",
        "2024-02-04",
        "原文待补充：Making GitHub More Open: Git-backed Wiki",
        { b =>
            h2(b, "Making GitHub More Open: Git-backed Wikis - The...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://github.blog/2010-08-12-making-github-more-open-git-backed-wikis/"), "阅读原文")
        }
    )
}
