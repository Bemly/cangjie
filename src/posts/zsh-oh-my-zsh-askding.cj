package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZshOhMyZshAskdingPost(): Post {
    return Post(
        "zsh-oh-my-zsh-askding",
        "zsh + oh-my-zsh 主题预览 - askDing - 博客园",
        "2024-09-09",
        "原文待补充：zsh + oh-my-zsh 主题预览 - askDing - 博客园",
        { b =>
            h2(b, "zsh + oh-my-zsh 主题预览 - askDing - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/askDing/p/6270269.html"), "阅读原文")
        }
    )
}
