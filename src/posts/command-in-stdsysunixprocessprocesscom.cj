package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCommandInStdsysunixprocessprocesscomPost(): Post {
    return Post(
        "command-in-stdsysunixprocessprocesscom",
        "Command in std::sys::unix::process::process_com...",
        "2024-08-08",
        "官方文档/工具：Command in std::sys::unix::process::proc",
        { b =>
            h2(b, "Command in std::sys::unix::process::process_com...")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://stdrs.dev/nightly/x86_64-unknown-linux-gnu/std/sys/unix/process/process_common/struct.Command.html"), "访问原始链接")
        }
    )
}
