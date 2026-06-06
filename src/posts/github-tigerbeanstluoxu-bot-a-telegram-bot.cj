package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubTigerbeanstluoxuBotATelegramBotPost(): Post {
    return Post(
        "github-tigerbeanstluoxu-bot-a-telegram-bot",
        "GitHub - TigerBeanst/luoxu-bot: A Telegram bot ...",
        "2025-04-04",
        "GitHub 仓库：GitHub - TigerBeanst/luoxu-bot: A Telegr",
        { b =>
            h2(b, "GitHub - TigerBeanst/luoxu-bot: A Telegram bot ...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/TigerBeanst/luoxu-bot"), "访问原始链接")
        }
    )
}
