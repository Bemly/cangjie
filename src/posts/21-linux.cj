package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP21linuxPost(): Post {
    return Post(
        "21-linux",
        "麒麟操作系统2.1 安装笔记 _ Linux视野",
        "2022-01-01",
        "网站主页：麒麟操作系统2.1 安装笔记 _ Linux视野",
        { b =>
            h2(b, "麒麟操作系统2.1 安装笔记 _ Linux视野")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.linuxsight.com/blog/116/"), "访问原始链接")
        }
    )
}
