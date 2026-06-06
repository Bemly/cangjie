package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP30issue280mqyqingPost(): Post {
    return Post(
        "30-issue-280-mqyqing",
        "冴羽答读者问：30 岁了， 现在开始努力，晚吗？ · Issue #280 · mqyqing...",
        "2024-02-03",
        "GitHub Issue：冴羽答读者问：30 岁了， 现在开始努力，晚吗？ · Issue #280 · ",
        { b =>
            h2(b, "冴羽答读者问：30 岁了， 现在开始努力，晚吗？ · Issue #280 · mqyqing...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/mqyqingfeng/Blog/issues/280"), "访问原始链接")
        }
    )
}
