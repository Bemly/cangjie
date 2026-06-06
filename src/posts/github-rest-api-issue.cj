package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubRestApiIssuePost(): Post {
    return Post(
        "github-rest-api-issue",
        "GitHub の REST API で Issue 情報を取得する方法いろいろ - まくまく ...",
        "2024-02-03",
        "原文待补充：GitHub の REST API で Issue 情報を取得する方法いろいろ ",
        { b =>
            h2(b, "GitHub の REST API で Issue 情報を取得する方法いろいろ - まくまく ...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://maku77.github.io/p/uvoibwi/"), "阅读原文")
        }
    )
}
