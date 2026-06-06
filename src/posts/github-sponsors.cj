package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubSponsorsPost(): Post {
    return Post(
        "github-sponsors",
        "我的 GitHub Sponsors 开通啦！",
        "[https://surmon.me/article/163](https://surmon.me/article/163)",
        "原文待补充：我的 GitHub Sponsors 开通啦！",
        { b =>
            h2(b, "我的 GitHub Sponsors 开通啦！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Surmon.me"), "阅读原文")
        }
    )
}
