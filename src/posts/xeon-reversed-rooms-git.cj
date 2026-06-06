package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXeonReversedRoomsGitPost(): Post {
    return Post(
        "xeon-reversed-rooms-git",
        "xeon - Reversed Rooms Git",
        "2024-04-02",
        "网站主页：xeon - Reversed Rooms Git",
        { b =>
            h2(b, "xeon - Reversed Rooms Git")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://git.xeondev.com/xeon"), "访问原始链接")
        }
    )
}
