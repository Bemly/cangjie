package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLibrewolfGitlabPost(): Post {
    return Post(
        "librewolf-gitlab",
        "LibreWolf · GitLab",
        "2023-01-09",
        "原文待补充：LibreWolf · GitLab",
        { b =>
            h2(b, "LibreWolf · GitLab")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://gitlab.com/librewolf-community"), "阅读原文")
        }
    )
}
