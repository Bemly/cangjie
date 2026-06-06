package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubGrasscuttersgrasscutterAServerSofPost(): Post {
    return Post(
        "github-grasscuttersgrasscutter-a-server-sof",
        "GitHub - Grasscutters/Grasscutter: A server sof...",
        "2022-05-04",
        "GitHub 仓库：GitHub - Grasscutters/Grasscutter: A ser",
        { b =>
            h2(b, "GitHub - Grasscutters/Grasscutter: A server sof...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/Grasscutters/Grasscutter"), "访问原始链接")
        }
    )
}
