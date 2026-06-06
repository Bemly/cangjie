package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEsdwimIssue340ChPost(): Post {
    return Post(
        "esdwim-issue-340-ch",
        "ESD释放或者转wim时：指定的缓冲区中包含类型错误的数据 · Issue #340 · Ch...",
        "2021-08-17",
        "GitHub Issue：ESD释放或者转wim时：指定的缓冲区中包含类型错误的数据 · Issue #3",
        { b =>
            h2(b, "ESD释放或者转wim时：指定的缓冲区中包含类型错误的数据 · Issue #340 · Ch...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/Chuyu-Team/Dism-Multi-language/issues/340#start-of-content"), "访问原始链接")
        }
    )
}
