package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEasilyRunWindowsSoftwareOnLinuxWithBottlPost(): Post {
    return Post(
        "easily-run-windows-software-on-linux-with-bottl",
        "Easily run Windows software on Linux with Bottles",
        "2024-05-04",
        "Bottles是一款在Linux上运行Windows软件的工具，通过简洁界面管理Wine配置，支持游戏、沙盒隔离和依赖管理",
        { b =>
            h2(b, "Easily run Windows software on Linux with Bottles")
            p(b, "Bottles是一款让Linux用户轻松运行Windows软件的工具，只需几次点击即可完成配置。最新版本为Bottles 64，已获得NLnet 2025 Commons Fund资助。")
            p(b, "核心特性包括：游戏就绪 - 预配置的游戏环境，支持Steam、Epic等商店；沙盒隔离 - 基于Flatpak构建，隔离Windows应用保持系统清洁；版本管理器 - 轻松管理和切换不同Wine、Proton、DXVK版本。")
            p(b, "依赖管理 - 一键安装.NET、Visual C++、字体等关键依赖；版本化 - 随时创建快照，自由实验，出问题可恢复到之前状态。")
            p(b, "WineBridge - 一个.NET桥接器，可直接从Wine内执行Windows指令；集成安装器 - 访问社区驱动的安装器库，一键安装Epic Games、Battle.net、Adobe等数百款软件。")
            p(b, "Eagle（测试版）是高级自动化分析工具，可检测Windows可执行文件的模式、依赖和引擎，为软件推荐最佳配置。")
            p(b, "Bottles Next是下一个重大版本，使用Rust完全重写，采用革命性的Client-Server架构重新定义Wine prefix管理。推荐通过Flatpak (Flathub)安装。")
            a(b, attrs("href", "https://usebottles.com/"), "访问原始链接")
        }
    )
}
