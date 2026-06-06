package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubTakayamaLilyoicqQqPost(): Post {
    return Post(
        "github-takayama-lilyoicq-qq",
        "GitHub - takayama-lily/oicq: QQ机器人协议库",
        "2021-11-07",
        "GitHub 仓库：GitHub - takayama-lily/oicq: QQ机器人协议库",
        { b =>
            h2(b, "GitHub - takayama-lily/oicq: QQ机器人协议库")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/takayama-lily/oicq"), "访问原始链接")
        }
    )
}
