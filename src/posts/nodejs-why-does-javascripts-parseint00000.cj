package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodejsWhyDoesJavascriptsParseint00000Post(): Post {
    return Post(
        "nodejs-why-does-javascripts-parseint00000",
        "node.js - Why does JavaScript's parseInt(0.0000...",
        "2023-04-03",
        "网站主页：node.js - Why does JavaScript's parseInt",
        { b =>
            h2(b, "node.js - Why does JavaScript's parseInt(0.0000...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/69613606/why-does-javascripts-parseint0-0000005-print-5"), "访问原始链接")
        }
    )
}
