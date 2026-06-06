package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNatIssue920EhPost(): Post {
    return Post(
        "nat-issue-920-eh",
        "希望在双方的NAT都为对称型时添加并使用基础的端口预测算法 · Issue #920 · eh...",
        "2024-01-14",
        "GitHub Issue：希望在双方的NAT都为对称型时添加并使用基础的端口预测算法 · Issue #9",
        { b =>
            h2(b, "希望在双方的NAT都为对称型时添加并使用基础的端口预测算法 · Issue #920 · eh...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/ehang-io/nps/issues/920"), "访问原始链接")
        }
    )
}
