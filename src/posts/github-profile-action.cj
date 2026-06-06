package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubProfileActionPost(): Post {
    return Post(
        "github-profile-action",
        "玩了一下 Github 个人首页的 Profile （使用 Action 自动更新）",
        "[https://www.kawabangga.com/posts/4117](https://www.kawabangga.com/posts/4117)",
        "原文待补充：玩了一下 Github 个人首页的 Profile （使用 Action 自动更",
        { b =>
            h2(b, "玩了一下 Github 个人首页的 Profile （使用 Action 自动更新）")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "卡..."), "阅读原文")
        }
    )
}
