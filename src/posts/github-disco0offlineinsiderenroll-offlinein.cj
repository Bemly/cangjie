package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubDisco0offlineinsiderenrollOfflineinPost(): Post {
    return Post(
        "github-disco0offlineinsiderenroll-offlinein",
        "GitHub - disco0/offlineinsiderenroll: OfflineIn...",
        "2021-08-01",
        "GitHub 仓库：GitHub - disco0/offlineinsiderenroll: Of",
        { b =>
            h2(b, "GitHub - disco0/offlineinsiderenroll: OfflineIn...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/disco0/offlineinsiderenroll"), "访问原始链接")
        }
    )
}
