package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArchlinuxPost(): Post {
    return Post(
        "archlinux",
        "archlinux 简明指南",
        "[https://arch.icekylin.online/](https://arch.icekylin.online/)",
        "一份面向新手的 Arch Linux 安装、配置、维护指南，帮助用户快速上手并让 Arch Linux 成为日常系统。",
        { b =>
            h2(b, "archlinux 简明指南")
            p(b, "这是一份派生自 Arch Linux 安装使用教程的简明指南，包含安装、配置、维护等内容，帮助新手快速上手 Arch Linux，让其成为日常系统。指南采用 VitePress 驱动，格式经过优化。")
            p(b, "指南内容分为几个主要部分：\"千里之行\"帮助了解 Arch Linux 是否适合自己；\"新手上路\"涵盖基础安装和虚拟机安装；\"进阶安装\"包括桌面环境、常用应用和显卡驱动安装；\"进阶话题\"涵盖可选配置和功耗控制。")
            p(b, "系统美化部分分为布局、主题和终端三个方面。系统管理部分包括合格系统管理员指南、常见问题解答、系统盘制作和 Btrfs 相关内容。")
            p(b, "安全方面涵盖数据加密（磁盘加密）、安全启动和 LSM（AppArmor 配置和使用）。指南的特点是介绍详细、图文丰富、内容实用，遵循 Arch 实用性原则，对非自由软件更加包容。")
            p(b, "指南删除了部分有争议的内容，如有需要请参阅原文档。网站源代码采用 MIT 许可证，文档内容采用知识共享署名-相同方式共享 4.0 国际许可协议。")
            p(b, "指南目前仍在施工中，欢迎对内容和网站源码做出贡献。可以在 GitHub 上参与贡献，也可以帮助完善上游文档。")
            a(b, attrs("href", "https://arch.icekylin.online/"), "阅读原文")
        }
    )
}
