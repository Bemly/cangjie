package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIntelclearLinuxPost(): Post {
    return Post(
        "intelclear-linux",
        "如何评价intel的clear linux ?",
        "2024-02-02",
        "论坛/讨论：如何评价intel的clear linux ?",
        { b =>
            h2(b, "如何评价intel的clear linux ?")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.zhihu.com/tardis/bd/ans/2373830009?source_id=1001"), "访问原始链接")
        }
    )
}
