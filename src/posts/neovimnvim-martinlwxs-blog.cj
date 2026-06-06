package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNeovimnvimMartinlwxsBlogPost(): Post {
    return Post(
        "neovimnvim-martinlwxs-blog",
        "从零开始配置 Neovim(Nvim) - MartinLwx's Blog",
        "2024-08-07",
        "原文待补充：从零开始配置 Neovim(Nvim) - MartinLwx's Blog",
        { b =>
            h2(b, "从零开始配置 Neovim(Nvim) - MartinLwx's Blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://martinlwx.github.io/zh-cn/config-neovim-from-scratch/#%E6%80%BB%E7%BB%93"), "阅读原文")
        }
    )
}
