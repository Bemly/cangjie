package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleasesFndroidclashforwindowspkgGithubPost(): Post {
    return Post(
        "releases-fndroidclashforwindowspkg-github",
        "Releases · Fndroid/clash_for_windows_pkg · GitHub",
        "2022-04-24",
        "GitHub Releases：Releases · Fndroid/clash_for_windows_pkg",
        { b =>
            h2(b, "Releases · Fndroid/clash_for_windows_pkg · GitHub")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/Fndroid/clash_for_windows_pkg/releases"), "访问原始链接")
        }
    )
}
