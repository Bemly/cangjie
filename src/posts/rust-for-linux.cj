package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustForLinuxPost(): Post {
    return Post(
        "rust-for-linux",
        "Rust for Linux",
        "2024-08-10",
        "网站主页：Rust for Linux",
        { b =>
            h2(b, "Rust for Linux")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://rust-for-linux.com/"), "访问原始链接")
        }
    )
}
