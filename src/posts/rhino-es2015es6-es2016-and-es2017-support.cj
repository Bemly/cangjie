package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRhinoEs2015es6Es2016AndEs2017SupportPost(): Post {
    return Post(
        "rhino-es2015es6-es2016-and-es2017-support",
        "Rhino ES2015/ES6, ES2016 and ES2017 support",
        "2024-08-15",
        "官方文档/工具：Rhino ES2015/ES6, ES2016 and ES2017 supp",
        { b =>
            h2(b, "Rhino ES2015/ES6, ES2016 and ES2017 support")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://mozilla.github.io/rhino/compat/engines.html"), "访问原始链接")
        }
    )
}
