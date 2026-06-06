package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWelcomeToGithubPagesPost(): Post {
    return Post(
        "welcome-to-github-pages",
        "Welcome to GitHub Pages",
        "[https://0-a-e.github.io/Pingheng/](https://0-a-e.github.io/Pingheng/)",
        "原文待补充：Welcome to GitHub Pages",
        { b =>
            h2(b, "Welcome to GitHub Pages")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Pingheng"), "阅读原文")
        }
    )
}
