package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub9Post(): Post {
    return Post(
        "github-9",
        "有了中国人，就开始践踏规矩！中国 GitHub 霸榜乱象！",
        "用户体验设计\",
        "原文待补充：有了中国人，就开始践踏规矩！中国 GitHub 霸榜乱象！",
        { b =>
            h2(b, "有了中国人，就开始践踏规矩！中国 GitHub 霸榜乱象！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "程序员\\"), "阅读原文")
        }
    )
}
