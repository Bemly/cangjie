package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost145Post(): Post {
    return Post(
        "post-145",
        "找不到网址",
        "2023-01-17",
        "Gitee 页面：找不到网址",
        { b =>
            h2(b, "找不到网址")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/mentong/stage.git"), "访问原始链接")
        }
    )
}
