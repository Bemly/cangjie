package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFedoraAsahiRemixAsahiLinuxPost(): Post {
    return Post(
        "fedora-asahi-remix-asahi-linux",
        "Fedora Asahi Remix - Asahi Linux",
        "2024-11-28",
        "网站主页：Fedora Asahi Remix - Asahi Linux",
        { b =>
            h2(b, "Fedora Asahi Remix - Asahi Linux")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://asahilinux.org/fedora/#device-support"), "访问原始链接")
        }
    )
}
