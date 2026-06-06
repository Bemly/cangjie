package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubPagesPost(): Post {
    return Post(
        "github-pages",
        "多个域名指向同一个 GitHub Pages - 陈惠超的博客",
        "2024-02-02",
        "原文待补充：多个域名指向同一个 GitHub Pages - 陈惠超的博客",
        { b =>
            h2(b, "多个域名指向同一个 GitHub Pages - 陈惠超的博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.chenhuichao.com/2017/06/27/hexo/github-pages-multiple-domain/"), "阅读原文")
        }
    )
}
