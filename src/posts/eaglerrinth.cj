package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEaglerrinthPost(): Post {
    return Post(
        "eaglerrinth",
        "EaglerRinth",
        "2024-07-03",
        "EaglerRinth - EaglerForge 模组资源库",
        { b =>
            h2(b, "EaglerRinth")
            p(b, "EaglerRinth 是一个 EaglerForge 模组资源库，类似于 Modrinth 的概念，专门为 Eaglercraft 生态系统提供模组分发平台。它收录了各种基于 EaglerForge Injector 和 Old-Eaglerforge API 开发的模组。")
            p(b, "平台上展示了多个社区开发的模组，包括自定义物品库、异步操作处理器、各种 Block of Steve 模组变体、重复漏洞猎手工具等。")
            h2(b, "收录的模组示例")
            p(b, "Custom Item Library - 由 ZXMushroom63 开发的 Eaglerforge Injector 自定义物品库，提供了创建自定义游戏物品的 API。")
            p(b, "Async Sink - 同样由 ZXMushroom63 开发，用于处理异步操作的库。")
            p(b, "StatsHud - 由 Neverflagastralis 开发的全新状态显示界面，计划添加自定义功能。")
            p(b, "FreshEaglerUI - 由 Murturtle 开发，重新设计了 UI 滑入动画和主屏幕界面。")
            h2(b, "平台生态")
            p(b, "EaglerRinth 支持两种 API 类型：Eaglerforge Injector（新版）和 Old-Eaglerforge 1.8.8（旧版），为不同版本的 Eaglercraft 提供兼容的模组资源。每个模组都提供源代码查看和下载功能。")
            a(b, attrs("href", "https://eaglerrinth.github.io/"), "访问 EaglerRinth")
        }
    )
}
