package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBiosMarcelcordlessTheDiscordTerminalCliePost(): Post {
    return Post(
        "bios-marcelcordless-the-discord-terminal-clie",
        "Bios-Marcel/cordless: The Discord terminal clie...",
        "2022-06-21",
        "GitHub 仓库：Bios-Marcel/cordless: The Discord termin",
        { b =>
            h2(b, "Bios-Marcel/cordless: The Discord terminal clie...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/Bios-Marcel/cordless"), "访问原始链接")
        }
    )
}
