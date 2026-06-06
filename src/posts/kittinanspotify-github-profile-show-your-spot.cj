package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKittinanspotifyGithubProfileShowYourSpotPost(): Post {
    return Post(
        "kittinanspotify-github-profile-show-your-spot",
        "kittinan/spotify-github-profile: Show your Spot...",
        "2024-09-11",
        "GitHub 仓库：kittinan/spotify-github-profile: Show yo",
        { b =>
            h2(b, "kittinan/spotify-github-profile: Show your Spot...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/kittinan/spotify-github-profile"), "访问原始链接")
        }
    )
}
