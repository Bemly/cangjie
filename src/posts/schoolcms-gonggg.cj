package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSchoolcmsGongggPost(): Post {
    return Post(
        "schoolcms-gonggg",
        "SchoolCMS学校管理系统项目 - 龚哥哥的博客 - 山里男儿 - gong.gg",
        "2023-04-12",
        "原文待补充：SchoolCMS学校管理系统项目 - 龚哥哥的博客 - 山里男儿 - gong",
        { b =>
            h2(b, "SchoolCMS学校管理系统项目 - 龚哥哥的博客 - 山里男儿 - gong.gg")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://gong.gg/post-51.html"), "阅读原文")
        }
    )
}
