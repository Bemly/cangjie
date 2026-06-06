package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getClearInstructionsForInstallingChromeOsOnPost(): Post {
    return Post(
        "clear-instructions-for-installing-chrome-os-on",
        "Clear instructions for installing Chrome OS on ...",
        "2023-08-08",
        "GitHub Issue：Clear instructions for installing Chrome",
        { b =>
            h2(b, "Clear instructions for installing Chrome OS on ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/sebanc/brunch/issues/647"), "访问原始链接")
        }
    )
}
