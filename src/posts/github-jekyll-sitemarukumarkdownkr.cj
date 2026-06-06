package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubJekyllSitemarukumarkdownkrPost(): Post {
    return Post(
        "github-jekyll-sitemarukumarkdownkr",
        "github jekyll site不再采用Maruku做为Markdown的解释器,而是kr...",
        "2024-02-04",
        "原文待补充：github jekyll site不再采用Maruku做为Markdown的解",
        { b =>
            h2(b, "github jekyll site不再采用Maruku做为Markdown的解释器,而是kr...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/loveaborn/article/details/25535227"), "阅读原文")
        }
    )
}
