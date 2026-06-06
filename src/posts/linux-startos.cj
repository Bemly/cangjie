package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxStartosPost(): Post {
    return Post(
        "linux-startos",
        "开源操作系统,linux系统--起点操作系统(StartOS)官方网站",
        "2021-12-31",
        "网站主页：开源操作系统,linux系统--起点操作系统(StartOS)官方网站",
        { b =>
            h2(b, "开源操作系统,linux系统--起点操作系统(StartOS)官方网站")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.startos.org/#linkDown"), "访问原始链接")
        }
    )
}
