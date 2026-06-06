package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTidusZhangfluentwpfFluentDesignSystemForPost(): Post {
    return Post(
        "tidus-zhangfluentwpf-fluent-design-system-for",
        "tidus zhang/FluentWPF: Fluent Design System for...",
        "2021-08-29",
        "Gitee 页面：tidus zhang/FluentWPF: Fluent Design Sys",
        { b =>
            h2(b, "tidus zhang/FluentWPF: Fluent Design System for...")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/tiduszhang/FluentWPF"), "访问原始链接")
        }
    )
}
