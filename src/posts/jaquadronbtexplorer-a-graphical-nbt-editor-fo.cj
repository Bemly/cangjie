package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJaquadronbtexplorerAGraphicalNbtEditorFoPost(): Post {
    return Post(
        "jaquadronbtexplorer-a-graphical-nbt-editor-fo",
        "jaquadro/NBTExplorer: A graphical NBT editor fo...",
        "2025-02-13",
        "GitHub 仓库：jaquadro/NBTExplorer: A graphical NBT ed",
        { b =>
            h2(b, "jaquadro/NBTExplorer: A graphical NBT editor fo...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/jaquadro/NBTExplorer"), "访问原始链接")
        }
    )
}
