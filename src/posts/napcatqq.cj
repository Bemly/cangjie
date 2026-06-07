package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNapcatqqPost(): Post {
    return Post(
        "napcatqq",
        "NapCatQQ",
        "2024-08-18",
        "NapCatQQ 是一个现代化的基于 NTQQ 的 Bot 协议端实现，天生无头、内存轻量、适配快速。",
        { b =>
            h2(b, "什么是 NapCatQQ")
            p(b, "NapCatQQ 是一个现代化的基于 NTQQ 的 Bot 协议端实现。它采用 Core/Adapter 架构，支持多种 Bot 协议，可以快速从其他平台迁移。NapCatQQ 由 NapNeko 团队开发和维护。")
            h2(b, "核心特性")
            p(b, "开箱即用：支持多种部署方式，可快捷部署于 Windows、Linux、macOS 等主流 x64 架构平台。内存轻量：天生无头，不依赖框架加载，不依赖 Electron，内存占用低至 50~100 MB。适配快速：采取 Core/Adapter 架构，支持多种 Bot 协议，快速迁移。")
            h2(b, "生态支持")
            p(b, "NapCatQQ 拥有丰富的生态系统，包括官方对接框架和二次开发框架。工具方面提供可视化管理工具和可视化网页配置，降低了使用门槛。社区方面有多个官方社区群组，包括企鹅社区和 Telegram 社区，方便用户交流和获取帮助。")
            h2(b, "无头设计优势")
            p(b, "NapCatQQ 采用天生无头（Headless）的设计，这意味着它不需要图形界面即可运行。不依赖 Electron 等重量级框架，也不需要框架加载过程，因此启动速度快、资源占用极低。50~100 MB 的内存占用使得它非常适合在资源有限的服务器上运行。")
            h2(b, "协议适配")
            p(b, "NapCatQQ 基于 NTQQ 协议实现，采用 Core/Adapter 分离架构。Core 层负责与 NTQQ 底层通信，Adapter 层负责对接不同的 Bot 协议标准。这种架构使得 NapCatQQ 可以快速适配新的 Bot 协议，也为从其他 Bot 平台迁移提供了便利。")
            a(b, attrs("href", "https://napneko.github.io/"), "阅读原文")
        }
    )
}
