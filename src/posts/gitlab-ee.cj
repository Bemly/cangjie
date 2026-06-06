package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGitlabEePost(): Post {
    return Post(
        "gitlab-ee",
        "破解Gitlab EE",
        "[https://blog.17lai.site/posts/29a820b3/](https://blog.17lai.site/posts/29a820b3/)",
        "原文待补充：破解Gitlab EE",
        { b =>
            h2(b, "破解Gitlab EE")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "夜法之书"), "阅读原文")
        }
    )
}
