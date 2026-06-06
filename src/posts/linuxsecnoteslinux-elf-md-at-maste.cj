package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxsecnoteslinuxElfMdAtMastePost(): Post {
    return Post(
        "linuxsecnoteslinux-elf-md-at-maste",
        "LinuxSecNotes/Linux 系统底层知识/ELF 文件简介.md at maste...",
        "2024-08-11",
        "GitHub 文件：LinuxSecNotes/Linux 系统底层知识/ELF 文件简介.md a",
        { b =>
            h2(b, "LinuxSecNotes/Linux 系统底层知识/ELF 文件简介.md at maste...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/JnuSimba/LinuxSecNotes/blob/master/Linux%20%E7%B3%BB%E7%BB%9F%E5%BA%95%E5%B1%82%E7%9F%A5%E8%AF%86/ELF%20%E6%96%87%E4%BB%B6%E7%AE%80%E4%BB%8B.md"), "访问原始链接")
        }
    )
}
