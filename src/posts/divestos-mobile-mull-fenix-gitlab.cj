package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDivestosMobileMullFenixGitlabPost(): Post {
    return Post(
        "divestos-mobile-mull-fenix-gitlab",
        "DivestOS Mobile / Mull-Fenix · GitLab",
        "2023-01-09",
        "原文待补充：DivestOS Mobile / Mull-Fenix · GitLab",
        { b =>
            h2(b, "DivestOS Mobile / Mull-Fenix · GitLab")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://gitlab.com/divested-mobile/mull-fenix"), "阅读原文")
        }
    )
}
