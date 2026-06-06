package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNeovimnvimMartinlwxsBlogPost(): Post {
    return Post(
        "neovimnvim-martinlwxs-blog",
        "从零开始配置 Neovim(Nvim) - MartinLwx's Blog",
        "2024-08-07",
        "一篇详细的 Neovim 配置教程，从零开始将 nvim 打造成轻量级 IDE，涵盖选项配置、按键映射、插件管理器、主题、自动补全和 LSP 配置。",
        { b =>
            p(b, "本文是 MartinLwx 撰写的 Neovim 从零配置教程，适配 Neovim v0.12，介绍如何将 nvim 配置成一个轻量级的 IDE。文章涵盖选项配置、按键映射、插件管理器、主题、自动补全和 LSP 等方面。")
            h2(b, "为什么选择 Neovim")
            p(b, "作者在使用 Vim 一年多之后，觉得 Vim 的配置麻烦、启动速度不尽人意，而且不喜欢 Vimscript 的写法，因此决定迁移到 Neovim。相比迁移旧配置，作者选择从零开始重新配置，顺便审视旧配置并将插件替换为当前的 Best Practice。作者强调配置时弄清楚每个选项的含义非常重要，因此尽量在注释中解释每个配置的用途。")
            h2(b, "nvim 配置基础知识")
            p(b, "作者使用 Lua 语言编写配置，建议读者先了解 Lua 基本语法。在 Linux/Mac 系统上，nvim 的配置目录在 ~/.config/nvim 下，也叫 runtimepath。配置文件目录结构包括：init.lua 作为入口文件，lua/ 目录存放选项、按键映射和 LSP 配置，plugin/ 目录存放插件配置，lsp/ 目录存放各 LSP 的配置。")
            h2(b, "选项配置")
            p(b, "选项配置主要使用 vim.g、vim.opt、vim.cmd 等 API。关键配置包括：使用系统剪贴板、设置 Tab 为 4 个空格、显示行号和相对行号、高亮当前行、智能搜索（忽略大小写但输入大写字母时敏感）。这些配置写在 ~/.config/nvim/lua/options.lua 中，然后在 init.lua 里用 require('options') 导入。")
            h2(b, "按键配置")
            p(b, "按键映射使用 vim.keymap.set API，主要配置包括：用 Ctrl+h/j/k/l 在多窗口之间快速移动光标，用 Ctrl+方向键调整窗口大小，在 Visual Mode 下用 Tab/Shift-Tab 改变缩进。配置文件为 ~/.config/nvim/lua/keymaps.lua。")
            h2(b, "使用原生插件管理器")
            p(b, "从 Neovim v0.12 开始，Neovim 有了自己的插件管理器 vim.pack.add，不再需要第三方插件管理器如 lazy.nvim。作者采用模块化设计：每个插件对应 ~/.config/nvim/plugin/ 下的一个独立文件，方便扩展和维护。")
            h2(b, "主题配置")
            p(b, "作者选用 monokai.nvim 主题，在 ~/.config/nvim/plugin/monokai.nvim.lua 中使用 vim.pack.add 安装插件，并通过 vim.cmd 设置 colorscheme。重启 nvim 后会提示下载插件，确认后即可生效。注意 macOS 自带的 Terminal.app 只支持 ANSI 256 色，建议使用 iTerm2 或 Kitty。")
            h2(b, "自动补全插件 blink.cmp")
            p(b, "作者将之前使用的 nvim-cmp 替换为 blink.cmp，配置更简单且速度更快。关键配置包括：用回车键确定补全项，支持方向键和 Tab/Shift-Tab 切换候选项，Ctrl-b/Ctrl-f 滚动文档，输入字符后自动展示补全项，以及自动显示被选中项的文档。")
            h2(b, "LSP 配置")
            p(b, "LSP 提供跳转定义、代码补全等功能。作者使用 mason.nvim 作为 LSP Registry 来方便下载 LSP。从 Neovim v0.11 开始引入了 vim.lsp.config 和 vim.lsp.enable API，不再需要 nvim-lspconfig 插件。以 Python 的 LSP ty 为例，在 lsp/ 目录下新建 ty.lua，配置 cmd、filetypes、root_markers 即可。在 lua/lsp.lua 中配置 LSP 相关按键映射（如 gd 跳转到定义），最后在 init.lua 中 require('lsp') 完成加载。")
            h2(b, "总结")
            p(b, "通过这套配置，作者成功将 nvim 变成了一个支持代码高亮、代码补全、语法检查等功能的轻量级 IDE，完全开源免费。作者将配置文件托管在 GitHub 的 dotfiles 仓库中，在新机器上只需克隆配置即可获得一致的编程体验。作者认为理解你的工具有利于扩展和定制化，虽然需要花费一定精力，但这是值得的。")
            a(b, attrs("href", "https://martinlwx.github.io/zh-cn/config-neovim-from-scratch/"), "阅读原文")
        }
    )
}
