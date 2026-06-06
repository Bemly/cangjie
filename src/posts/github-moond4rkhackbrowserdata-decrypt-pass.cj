package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubMoond4rkhackbrowserdataDecryptPassPost(): Post {
    return Post(
        "github-moond4rkhackbrowserdata-decrypt-pass",
        "GitHub - moonD4rk/HackBrowserData: Decrypt pass...",
        "2022-04-24",
        "GitHub 仓库：GitHub - moonD4rk/HackBrowserData: Decry",
        { b =>
            h2(b, "GitHub - moonD4rk/HackBrowserData: Decrypt pass...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/moonD4rk/HackBrowserData"), "访问原始链接")
        }
    )
}
