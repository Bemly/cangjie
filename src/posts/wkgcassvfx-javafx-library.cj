package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWkgcassvfxJavafxLibraryPost(): Post {
    return Post(
        "wkgcassvfx-javafx-library",
        "wkgcass/vfx: javafx library",
        "2023-05-08",
        "GitHub 仓库：wkgcass/vfx: javafx library",
        { b =>
            h2(b, "wkgcass/vfx: javafx library")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/wkgcass/vfx"), "访问原始链接")
        }
    )
}
