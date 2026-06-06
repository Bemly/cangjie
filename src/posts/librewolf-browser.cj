package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLibrewolfBrowserPost(): Post {
    return Post(
        "librewolf-browser",
        "LibreWolf Browser",
        "2021-10-16",
        "LibreWolf是一个专注于隐私、安全和用户自由的Firefox自定义版本，去除所有遥测和数据收集功能。",
        { b =>
            h2(b, "LibreWolf Browser")
            p(b, "LibreWolf是一个自定义且独立的Firefox版本，主要目标是隐私、安全和用户自由。它旨在增加对跟踪和指纹识别技术的保护，同时包含一些安全改进。")
            p(b, "主要特性：")
            p(b, "无遥测：没有实验、广告软件、烦扰或不必要的干扰。")
            p(b, "隐私搜索：内置隐私友好的搜索引擎，如DuckDuckGo、Searx、Qwant等。")
            p(b, "内置内容拦截器：已预装uBlock Origin。")
            p(b, "增强隐私：经过加固以最大化隐私，同时不牺牲可用性。")
            p(b, "快速更新：始终从最新的Firefox稳定版源代码构建，保持安全性和功能的最新状态。")
            p(b, "完全开源：所有人都可以参与LibreWolf的开发，欢迎在Codeberg和Matrix上加入社区。")
            p(b, "LibreWolf是一个社区驱动的项目，鼓励用户加入Matrix聊天室参与讨论。合并请求、错误报告和功能请求在所有仓库中都是受欢迎的。")
            a(b, attrs("href", "https://librewolf-community.gitlab.io/"), "阅读原文")
        }
    )
}
