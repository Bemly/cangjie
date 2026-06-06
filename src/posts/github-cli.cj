package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubCliPost(): Post {
    return Post(
        "github-cli",
        "GitHub CLI",
        "[https://cli.github.com/](https://cli.github.com/)",
        "原文待补充：GitHub CLI",
        { b =>
            h2(b, "GitHub CLI")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Take GitHub to the command line"), "阅读原文")
        }
    )
}
