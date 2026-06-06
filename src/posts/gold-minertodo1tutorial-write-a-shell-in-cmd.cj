package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoldMinertodo1tutorialWriteAShellInCmdPost(): Post {
    return Post(
        "gold-minertodo1tutorial-write-a-shell-in-cmd",
        "gold-miner/TODO1/tutorial-write-a-shell-in-c.md...",
        "2024-08-07",
        "GitHub 文件：gold-miner/TODO1/tutorial-write-a-shell-",
        { b =>
            h2(b, "gold-miner/TODO1/tutorial-write-a-shell-in-c.md...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/xitu/gold-miner/blob/master/TODO1/tutorial-write-a-shell-in-c.md"), "访问原始链接")
        }
    )
}
