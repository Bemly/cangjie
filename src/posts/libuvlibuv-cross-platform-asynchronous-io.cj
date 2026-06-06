package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLibuvlibuvCrossPlatformAsynchronousIoPost(): Post {
    return Post(
        "libuvlibuv-cross-platform-asynchronous-io",
        "libuv/libuv: Cross-platform asynchronous I/O",
        "2025-04-27",
        "GitHub 仓库：libuv/libuv: Cross-platform asynchronous",
        { b =>
            h2(b, "libuv/libuv: Cross-platform asynchronous I/O")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/libuv/libuv"), "访问原始链接")
        }
    )
}
