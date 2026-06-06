package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGileli121glasscodeThisPluginAllowsYouToPost(): Post {
    return Post(
        "gileli121glasscode-this-plugin-allows-you-to",
        "gileli121/GlassCode: This plugin allows you to ...",
        "2024-08-09",
        "GitHub 仓库：gileli121/GlassCode: This plugin allows ",
        { b =>
            h2(b, "gileli121/GlassCode: This plugin allows you to ...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/gileli121/GlassCode"), "访问原始链接")
        }
    )
}
