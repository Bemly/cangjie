package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCliTerminalshellttyPPost(): Post {
    return Post(
        "cli-terminalshelltty-p",
        "命令行界面 (CLI)、终端 (Terminal)、Shell、TTY，傻傻分不清楚？ - P...",
        "2024-08-10",
        "原文待补充：命令行界面 (CLI)、终端 (Terminal)、Shell、TTY，傻傻分不",
        { b =>
            h2(b, "命令行界面 (CLI)、终端 (Terminal)、Shell、TTY，傻傻分不清楚？ - P...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://prinsss.github.io/the-difference-between-cli-terminal-shell-tty/"), "阅读原文")
        }
    )
}
