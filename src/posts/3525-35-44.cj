package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP35253544Post(): Post {
    return Post(
        "3525-35-44",
        "关于3.5单端和2.5 3.5 4.4 平衡间互相转换的几条定理",
        "2024-10-07",
        "GitHub 文件：关于3.5单端和2.5 3.5 4.4 平衡间互相转换的几条定理",
        { b =>
            h2(b, "关于3.5单端和2.5 3.5 4.4 平衡间互相转换的几条定理")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://gist.github.com/muink/26f76c7ce3ae4e49d755813c43360cc1"), "访问原始链接")
        }
    )
}
