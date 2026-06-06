package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAuthenticatingToGithubCodingxiaoshiwappacPost(): Post {
    return Post(
        "authenticating-to-github-codingxiaoshiwappac",
        "Authenticating to GitHub - codingxiaoshi/wappac...",
        "2022-07-23",
        "原文待补充：Authenticating to GitHub - codingxiaoshi",
        { b =>
            h2(b, "Authenticating to GitHub - codingxiaoshi/wappac...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://github1s.com/codingxiaoshi/wappack-code"), "阅读原文")
        }
    )
}
