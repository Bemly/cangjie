package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDiscordGoRustPost(): Post {
    return Post(
        "discord-go-rust",
        "为什么 Discord 从 Go 切换到了 Rust",
        "Go 技术论坛",
        "原文待补充：为什么 Discord 从 Go 切换到了 Rust",
        { b =>
            h2(b, "为什么 Discord 从 Go 切换到了 Rust")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Go优质外文翻译 \\"), "阅读原文")
        }
    )
}
