package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheLittleBookOfRustMacrosRustPost(): Post {
    return Post(
        "the-little-book-of-rust-macros-rust",
        "源代码分析 - The Little Book of Rust Macros （Rust 宏小册）",
        "2024-08-07",
        "网站主页：源代码分析 - The Little Book of Rust Macros （",
        { b =>
            h2(b, "源代码分析 - The Little Book of Rust Macros （Rust 宏小册）")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://zjp-cn.github.io/tlborm/syntax-extensions/source-analysis.html"), "访问原始链接")
        }
    )
}
