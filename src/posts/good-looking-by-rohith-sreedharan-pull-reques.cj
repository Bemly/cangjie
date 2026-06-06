package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoodLookingByRohithSreedharanPullRequesPost(): Post {
    return Post(
        "good-looking-by-rohith-sreedharan-pull-reques",
        "Good Looking by Rohith-sreedharan · Pull Reques...",
        "2024-02-02",
        "GitHub PR：Good Looking by Rohith-sreedharan · Pull",
        { b =>
            h2(b, "Good Looking by Rohith-sreedharan · Pull Reques...")
            p(b, "此链接为 GitHub Pull Request，非博客文章。")
            a(b, attrs("href", "https://github.com/EpicGames/Signup/pull/24"), "访问原始链接")
        }
    )
}
