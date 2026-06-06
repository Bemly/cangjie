package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWordpressGitDeploymentsWithWpPusherPost(): Post {
    return Post(
        "wordpress-git-deployments-with-wp-pusher",
        "WordPress Git deployments with WP Pusher",
        "2024-02-02",
        "网站主页：WordPress Git deployments with WP Pusher",
        { b =>
            h2(b, "WordPress Git deployments with WP Pusher")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://wppusher.com/"), "访问原始链接")
        }
    )
}
