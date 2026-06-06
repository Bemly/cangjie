package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAllowFreeloaderToBootVistaByMaharmstonePost(): Post {
    return Post(
        "allow-freeloader-to-boot-vista-by-maharmstone",
        "Allow Freeloader to boot Vista by maharmstone ·...",
        "2023-01-17",
        "GitHub PR：Allow Freeloader to boot Vista by maharm",
        { b =>
            h2(b, "Allow Freeloader to boot Vista by maharmstone ·...")
            p(b, "此链接为 GitHub Pull Request，非博客文章。")
            a(b, attrs("href", "https://github.com/reactos/reactos/pull/1905"), "访问原始链接")
        }
    )
}
