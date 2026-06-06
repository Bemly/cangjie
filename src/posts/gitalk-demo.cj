package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGitalkDemoPost(): Post {
    return Post(
        "gitalk-demo",
        "Gitalk Demo",
        "[https://gitalk.github.io/](https://gitalk.github.io/)",
        "原文待补充：Gitalk Demo",
        { b =>
            h2(b, "Gitalk Demo")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Aotu.io「凹凸实验室」"), "阅读原文")
        }
    )
}
