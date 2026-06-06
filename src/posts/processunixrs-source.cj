package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getProcessunixrsSourcePost(): Post {
    return Post(
        "processunixrs-source",
        "process_unix.rs - source",
        "2024-08-08",
        "官方文档/工具：process_unix.rs - source",
        { b =>
            h2(b, "process_unix.rs - source")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://stdrs.dev/nightly/x86_64-unknown-linux-gnu/src/std/sys/unix/process/process_unix.rs.html#317-338"), "访问原始链接")
        }
    )
}
