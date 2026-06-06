package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMesaMesaGitlabPost(): Post {
    return Post(
        "mesa-mesa-gitlab",
        "Mesa / mesa · GitLab",
        "2022-08-06",
        "原文待补充：Mesa / mesa · GitLab",
        { b =>
            h2(b, "Mesa / mesa · GitLab")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://gitlab.freedesktop.org/mesa/mesa"), "阅读原文")
        }
    )
}
