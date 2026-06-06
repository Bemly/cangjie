package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUpscaylupscaylUpscaylFreeAndOpenSourPost(): Post {
    return Post(
        "upscaylupscayl-upscayl-free-and-open-sour",
        "upscayl/upscayl: 🆙 Upscayl - Free and Open Sour...",
        "2023-05-07",
        "GitHub 仓库：upscayl/upscayl: 🆙 Upscayl - Free and Op",
        { b =>
            h2(b, "upscayl/upscayl: 🆙 Upscayl - Free and Open Sour...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/upscayl/upscayl"), "访问原始链接")
        }
    )
}
