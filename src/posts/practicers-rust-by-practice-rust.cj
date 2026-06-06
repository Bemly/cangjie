package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPracticersRustByPracticeRustPost(): Post {
    return Post(
        "practicers-rust-by-practice-rust",
        "关于 practice.rs - Rust By Practice( Rust 练习实践 )",
        "2024-07-01",
        "官方文档/工具：关于 practice.rs - Rust By Practice( Rust ",
        { b =>
            h2(b, "关于 practice.rs - Rust By Practice( Rust 练习实践 )")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://practice-zh.course.rs/why-exercise.html"), "访问原始链接")
        }
    )
}
