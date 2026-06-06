package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDlPractiseopensitupOpensitupPost(): Post {
    return Post(
        "dl-practiseopensitup-opensitup",
        "DL-Practise/OpenSitUp: OpenSitUp是一个基于姿态估计的开源项目，...",
        "2024-01-19",
        "GitHub 仓库：DL-Practise/OpenSitUp: OpenSitUp是一个基于姿态估",
        { b =>
            h2(b, "DL-Practise/OpenSitUp: OpenSitUp是一个基于姿态估计的开源项目，...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/DL-Practise/OpenSitUp"), "访问原始链接")
        }
    )
}
