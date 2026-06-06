package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHelixBookPost(): Post {
    return Post(
        "helix-book",
        "自定义主题 - Helix Book 中文翻译",
        "2024-08-07",
        "网站主页：自定义主题 - Helix Book 中文翻译",
        { b =>
            h2(b, "自定义主题 - Helix Book 中文翻译")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://zjp-cn.github.io/helix-book/themes.html"), "访问原始链接")
        }
    )
}
