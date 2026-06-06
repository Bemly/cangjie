package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxlinuxPost(): Post {
    return Post(
        "linuxlinux",
        "Linux视野_Linux看世界",
        "2022-01-01",
        "网站主页：Linux视野_Linux看世界",
        { b =>
            h2(b, "Linux视野_Linux看世界")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.linuxsight.com/"), "访问原始链接")
        }
    )
}
