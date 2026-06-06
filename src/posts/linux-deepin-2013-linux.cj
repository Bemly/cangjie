package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxDeepin2013LinuxPost(): Post {
    return Post(
        "linux-deepin-2013-linux",
        "Linux Deepin 2013 初体验 _ Linux视野",
        "2022-01-01",
        "网站主页：Linux Deepin 2013 初体验 _ Linux视野",
        { b =>
            h2(b, "Linux Deepin 2013 初体验 _ Linux视野")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.linuxsight.com/blog/7504/"), "访问原始链接")
        }
    )
}
