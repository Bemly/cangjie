package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEaglerforgePost(): Post {
    return Post(
        "eaglerforge",
        "EaglerForge",
        "2024-07-03",
        "EaglerForge - Eaglercraft 的模组加载器",
        { b =>
            h2(b, "EaglerForge")
            p(b, "EaglerForge 是 Eaglercraft 的模组加载器。Eaglercraft 是一个基于网页浏览器的 Minecraft 实现，而 EaglerForge 为其提供了模组支持，让用户可以在浏览器中使用自定义模组。")
            p(b, "EaglerForge 提供了完整的 API 文档和指南，帮助开发者创建适用于 Eaglercraft 的模组。官方网站包含 EaglerForge 使用指南和 API 文档两个主要部分。")
            h2(b, "功能特点")
            p(b, "作为一个模组加载器，EaglerForge 允许用户在 Eaglercraft 中加载和运行自定义模组。它提供了标准化的 API 接口，让模组开发者可以方便地扩展游戏功能。")
            p(b, "项目的源代码公开托管在 GitHub 上，社区可以参与贡献和改进。EaglerForge 是 Eaglercraft 生态系统中的重要组成部分，为这个独特的浏览器 Minecraft 体验增添了可扩展性。")
            a(b, attrs("href", "https://eaglerforge.github.io/"), "访问 EaglerForge")
        }
    )
}
