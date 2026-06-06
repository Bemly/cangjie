package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAvaloniauiavaloniavsVisualStudioExtensionPost(): Post {
    return Post(
        "avaloniauiavaloniavs-visual-studio-extension",
        "AvaloniaUI/AvaloniaVS: Visual Studio Extension ...",
        "2024-12-25",
        "GitHub 仓库：AvaloniaUI/AvaloniaVS: Visual Studio Ext",
        { b =>
            h2(b, "AvaloniaUI/AvaloniaVS: Visual Studio Extension ...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/avaloniaui/avaloniavs"), "访问原始链接")
        }
    )
}
