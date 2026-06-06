package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIBuiltAReceiptPrinterForGithubIssuesAPost(): Post {
    return Post(
        "i-built-a-receipt-printer-for-github-issues-a",
        "I built a receipt printer for GitHub issues - A...",
        "2024-02-02",
        "原文待补充：I built a receipt printer for GitHub iss",
        { b =>
            h2(b, "I built a receipt printer for GitHub issues - A...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://aschmelyun.com/blog/i-built-a-receipt-printer-for-github-issues/"), "阅读原文")
        }
    )
}
