package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog764Post(): Post {
    return Post(
        "blog-764",
        "捕蛇者说",
        "2024-08-24",
        "捕蛇者说是一个聊聊编程、程序员和 Python 的播客节目，由 laike9m 创办。",
        { b =>
            p(b, "捕蛇者说是一个聊聊编程、程序员和 Python 的播客节目，可以在多个平台订阅收听，包括 RSS、Castro、Spotify、Breaker、Castbox、Overcast、PlayerFM 和美国区 Apple Podcast。")
            p(b, "节目最新一期 Ep 58 聊的是从零实现龙虾需要什么，Bub 开发者访谈，探索 AI 的无限可能——从 OpenClaw 到 Bub，时长 1 小时 27 分钟。")
            p(b, "Ep 57 是两个世界的碰撞：传统企业眼中的 AI 革命，请到了推上的 Xiaowen 聊了聊作为传统企业的中层的他所见到的 AI 革命。")
            p(b, "Ep 56 对话 Hawstein：从独立开发到追寻人生的意义，时长 1 小时 32 分钟。特别篇 06 是 laixintao 和 Manjusaka 串台牛油果烤面包，聊的是当我们在聊 SRE 时我们在聊什么。")
            p(b, "Ep 55 是从文科转码到给 CPython 做贡献的纯文字稿。Ep 54 讨论 React Native 已死？Jetpack Compose 当立，和 2BAB 聊聊 2025 年移动开发的现状。")
            p(b, "Ep 53 聊 AI 能否帮我们做出更好的投资决策。Ep 52 和嘉宾卡比一起聊聊我们人生中经常面对的话题：我们应该怎么样去面对失败。")
            p(b, "Ep 51 和 Ep 50 是关于独立开发的两期节目，分别从推广销售和开发两个角度，比较了独立开发者选择开发 App 和 SaaS 的利弊，包括软件分发、付费转化、推广、开发效率、跨平台能力、所需设备、维护成本等方面。")
            a(b, attrs("href", "https://pythonhunter.org/"), "访问捕蛇者说")
        }
    )
}
