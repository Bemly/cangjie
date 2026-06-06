package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKal1LinuxGklbbPost(): Post {
    return Post(
        "kal1-linux-gklbb",
        "KAL1 LINUX 官方网站 --- 下载页 - GKLBB - 博客园",
        "2023-04-05",
        "Kali Linux 官方网站下载页面的中文翻译，介绍各种镜像类型和下载选项。",
        { b =>
            h2(b, "Kali Linux 官方网站 - 下载页")
            p(b, "Kali 是一个滚动的 Linux 发行版，一旦有更新就会发布。潜在的用户有多种镜像可以选择。对于大多数用户，推荐最新的重点发布镜像，除非需要特定的 bug 补丁，此时每周的构建可能是最好的。每季度都会生成新的 Kali Linux 镜像文件，这些文件成为官方的重点版本。")
            h2(b, "安装程序镜像")
            p(b, "安装器镜像可以直接访问硬件，使用定制的 Kali 内核，无额外开销。单次或多次启动 Kali，让你完全控制硬件访问，实现最佳性能。包括完整的离线安装、带有最新更新的每周构建、包含所有工具的完整版本，以及在安装过程中下载所有软件包的网络安装器。")
            h2(b, "虚拟机")
            p(b, "VMware 和 VirtualBox 的预建镜像，允许在不改变主机操作系统的情况下安装 Kali，并提供快照功能和隔离环境。默认凭证是 kali/kali。Vagrant 是一个构建和管理虚拟机环境的工具，通过配置文件可以下载基本的盒子并应用额外配置。")
            h2(b, "ARM 镜像")
            p(b, "从低端设备到高端现代服务器的硬件全覆盖，支持 Raspberry Pi 系列、Gateworks、Pine64、USBArmory 等设备。在相对廉价和低功率的单板计算机以及现代基于 ARM 的笔记本电脑上工作。")
            h2(b, "手机 - Kali NetHunter")
            p(b, "Kali NetHunter 项目是第一个针对 Android 设备的开源 Android 渗透测试平台，允许从各种支持的 Android 设备上访问 Kali 工具集。NetHunter 界面允许通过本地 Web 界面轻松处理复杂的配置文件，加上支持 802.11 无线注入的定制内核和预配置的回连服务。")
            p(b, "支持的设备包括 Nexus 系列、小米 Pocophone F1、三星 Galaxy Tab S4、OnePlus 系列等。NetHunter 提供一键式 MANA 邪恶接入点设置、USB HID 键盘攻击、BadUSB MITM 攻击、蓝牙攻击等功能。")
            h2(b, "其他安装方式")
            p(b, "云镜像可以快速部署在多个云供应商的基础设施上。容器技术如 Docker 和 LXC/LXD 允许访问 Kali 工具集而无需虚拟机开销。实时启动镜像可以在 CD/DVD/USB/PXE 上运行完整的 Kali 安装。WSL 允许在 Windows 中运行 Kali。")
            a(b, attrs("href", "https://www.cnblogs.com/GKLBB/p/16753172.html"), "阅读原文")
        }
    )
}
