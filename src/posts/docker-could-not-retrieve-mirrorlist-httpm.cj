package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDockerCouldNotRetrieveMirrorlistHttpmPost(): Post {
    return Post(
        "docker-could-not-retrieve-mirrorlist-httpm",
        "docker - Could not retrieve mirrorlist http://m...",
        "2024-09-20",
        "网站主页：docker - Could not retrieve mirrorlist h",
        { b =>
            h2(b, "docker - Could not retrieve mirrorlist http://m...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/78692851/could-not-retrieve-mirrorlist-http-mirrorlist-centos-org-release-7arch-x86-6"), "访问原始链接")
        }
    )
}
