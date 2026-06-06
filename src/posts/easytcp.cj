package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEasytcpPost(): Post {
    return Post(
        "easytcp",
        "极客柒/EasyTCP",
        "2024-01-13",
        "Gitee 页面：极客柒/EasyTCP",
        { b =>
            h2(b, "极客柒/EasyTCP")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/welcome2jcSpace/easy-tcp"), "访问原始链接")
        }
    )
}
