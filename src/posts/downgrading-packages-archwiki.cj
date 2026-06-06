package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDowngradingPackagesArchwikiPost(): Post {
    return Post(
        "downgrading-packages-archwiki",
        "Downgrading packages - ArchWiki",
        "2024-08-12",
        "官方文档/工具：Downgrading packages - ArchWiki",
        { b =>
            h2(b, "Downgrading packages - ArchWiki")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://wiki.archlinux.org/title/Downgrading_packages"), "访问原始链接")
        }
    )
}
