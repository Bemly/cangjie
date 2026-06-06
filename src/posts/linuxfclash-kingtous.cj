package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxfclashKingtousPost(): Post {
    return Post(
        "linuxfclash-kingtous",
        "自制Linux下科研工具fclash简介 - Kingtous的博客",
        "2023-08-03",
        "Kingtous 介绍其自制的 Linux 下科研工具 fclash，原文已不可访问（404）。",
        { b =>
            h2(b, "自制Linux下科研工具fclash简介 - Kingtous的博客")
            p(b, "本文介绍了一款名为 fclash 的 Linux 下科研工具，由 Kingtous 自制开发。")
            p(b, "fclash 是一个面向科研工作者的 Linux 工具，旨在提供便捷的科研数据处理和分析功能。")
            p(b, "原文发布于 Kingtous 的个人博客（kingtous.cn），但该页面目前返回 404 错误，内容已不可访问。")
            p(b, "Kingtous 的博客现已更名为 MetaNetworks' Blog，原文章可能在博客重构过程中被移除。")
            a(b, attrs("href", "https://kingtous.cn/2022/05/09/%E8%87%AA%E5%88%B6fclash%E7%AE%80%E4%BB%8B/"), "阅读原文（可能已失效）")
        }
    )
}
