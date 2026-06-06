package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB12101111sblogxboxonePost(): Post {
    return Post(
        "12101111s-blog-xbox-one",
        "12101111's blog - Xbox one 的安全措施",
        "2023-08-11",
        "翻译 Xbox Live 团队安全架构师 Tony Chen 在 PSEC 2019 上的演讲，详解 Xbox One 的软硬件安全架构。",
        { b =>
            h2(b, "Xbox One 的安全措施")
            p(b, "本文翻译了 Xbox Live 团队 Xbox One 安全系统架构师 Tony Chen 在2019年平台安全峰会（PSEC 2019）上的演讲。Tony Chen 自2000年起就是 Xbox Live 的创始成员，2011-2013年负责 Xbox One 安全开发，至今该主机没有被破解、盗版或开挂。")
            h2(b, "Xbox 软硬件简介")
            p(b, "Xbox 主板上有 8GB EMMC 4.5 NAND Flash 用于存储操作系统文件，即使硬盘坏掉系统也可以启动到恢复模式。Xbox One 有三个 Windows OS 运行：HostOS（基于 Windows 8 修改的专用系统，通过 Hyper-V 管理虚拟机）、SystemOS（运行 UI 和 UWP 应用）、GameOS（每个游戏附带的独立系统镜像）。")
            p(b, "Xbox One 总共 8 核 AMD 美洲豹 CPU、8GB DDR3 内存。System OS 保留 3G 运行 UI 和 UWP，5G 用于游戏。App 前台最多 1G 内存、后台 128M，共享 2-4 个 CPU 核、最多 45% GPU。UWP Game 可使用最多 5G 内存、独占 4 个 CPU 核、100% GPU。")
            h2(b, "XVD 与安全架构")
            p(b, "XVD（Xbox Virtual Drive）是加密的磁盘镜像，用于存储 Xbox One 的系统和数据。XVD 包含签名、头部（含 Hash 树的 SHA-256 哈希）、可选的 GameOS 镜像、Hash 树、持久存储和实际数据区。文件系统数据使用内容实例密钥（CIK）通过 RSA 算法加密。")
            h2(b, "安全目标与防护措施")
            p(b, "Xbox 的安全目标：阻止游戏/App 盗版、阻止 Xbox Live 上的作弊、防止用户对设备的攻击维持 CPU 执行控制权、阻止游戏明文和密钥泄漏、可以从任何软件 bug 恢复。Xbox 安全与 Windows 安全的根本区别是：攻击者就是设备拥有者，会攻击硬件，不能相信任何来自闪存、硬盘、内存、光盘的数据。")
            p(b, "Xbox One 使用多 VM 架构、安全处理器、全局密钥树、安全启动和 Attestation 机制。安全处理器的密钥寄存器保证即使主 SoC 被完全攻破，核心密钥仍然安全。Hypervisor 强制代码完整性检查确保只有签名代码才能执行。")
            p(b, "微软还采取了多种\"小聪明\"措施：删除了有漏洞的文件 App、通过遥测记录所有用户操作和运行程序、Edge 浏览器需要在线模式才能使用。每一次 PS4 被破解都是因为 Webkit 漏洞，微软通过这些措施大大提高了攻击难度。")
            a(b, attrs("href", "https://12101111.github.io/xbox-security/"), "阅读原文")
        }
    )
}
