package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIntroductionPngmeAnIntermediateRustProjectPost(): Post {
    return Post(
        "introduction-pngme-an-intermediate-rust-project",
        "Introduction - PNGme: An Intermediate Rust Project",
        "2024-07-02",
        "网站主页：Introduction - PNGme: An Intermediate Ru",
        { b =>
            h2(b, "Introduction - PNGme: An Intermediate Rust Project")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://jrdngr.github.io/pngme_book/"), "访问原始链接")
        }
    )
}
