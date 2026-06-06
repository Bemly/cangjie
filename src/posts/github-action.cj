package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubActionPost(): Post {
    return Post(
        "github-action",
        "白嫖系列-基于GitHub Action和国内公网服务器构建免费科学工具",
        "[https://halfcoke.github.io/2022/a2e7677e/](https://halfcoke.github.io/2022/a2e7677e/)",
        "原文待补充：白嫖系列-基于GitHub Action和国内公网服务器构建免费科学工具",
        { b =>
            h2(b, "白嫖系列-基于GitHub Action和国内公网服务器构建免费科学工具")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "CCCCCoke"), "阅读原文")
        }
    )
}
