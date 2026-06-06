package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPostcssJavascriptCssPost(): Post {
    return Post(
        "postcss-javascript-css",
        "PostCSS - 是一个用 JavaScript 工具和插件来转换 CSS 代码的工具",
        "[https://www.postcss.com.cn/](https://www.postcss.com.cn/)",
        "原文待补充：PostCSS - 是一个用 JavaScript 工具和插件来转换 CSS 代",
        { b =>
            h2(b, "PostCSS - 是一个用 JavaScript 工具和插件来转换 CSS 代码的工具")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "..."), "阅读原文")
        }
    )
}
