package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustrustCoursePost(): Post {
    return Post(
        "rustrust-course",
        "关于本书 - Rust语言圣经(Rust Course)",
        "2024-06-21",
        "原文待补充：关于本书 - Rust语言圣经(Rust Course)",
        { b =>
            h2(b, "关于本书 - Rust语言圣经(Rust Course)")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://course.rs/about-book.html"), "阅读原文")
        }
    )
}
