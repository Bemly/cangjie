package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPeopleDieButLongLiveGithubLaike9msBlogPost(): Post {
    return Post(
        "people-die-but-long-live-github-laike9ms-blog",
        "People Die, but Long Live GitHub - laike9m's blog",
        "2024-08-24",
        "原文待补充：People Die, but Long Live GitHub - laike",
        { b =>
            h2(b, "People Die, but Long Live GitHub - laike9m's blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://laike9m.com/blog/people-die-but-long-live-github,122/"), "阅读原文")
        }
    )
}
