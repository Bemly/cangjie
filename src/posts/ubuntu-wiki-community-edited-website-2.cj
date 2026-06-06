package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntuWikiCommunityEditedWebsite2Post(): Post {
    return Post(
        "ubuntu-wiki-community-edited-website-2",
        "Ubuntu Wiki (community-edited website)",
        "2021-01-25",
        "官方文档/工具：Ubuntu Wiki (community-edited website)",
        { b =>
            h2(b, "Ubuntu Wiki (community-edited website)")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "http://wiki.ubuntu.com/"), "访问原始链接")
        }
    )
}
