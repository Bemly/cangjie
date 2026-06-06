package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub10Post(): Post {
    return Post(
        "github-10",
        "👨‍💻 震惊！竟然有人在 GitHub 上冒充我的身份！",
        "[https://spencerwoo.com/blog/wait-this-is-not-my-commit](https://spencerwoo.com/blog/wait-this-is-not-my-commit)",
        "原文待补充：👨‍💻 震惊！竟然有人在 GitHub 上冒充我的身份！",
        { b =>
            h2(b, "👨‍💻 震惊！竟然有人在 GitHub 上冒充我的身份！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Spencer's blog"), "阅读原文")
        }
    )
}
