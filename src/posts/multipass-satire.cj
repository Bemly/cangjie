package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMultipassSatirePost(): Post {
    return Post(
        "multipass-satire",
        "Multipass，一款更轻量级的虚拟机！ - satire - 博客园",
        "2024-01-16",
        "介绍Canonical推出的轻量级虚拟机管理器Multipass，支持Linux、Windows、macOS，一行命令快速创建Ubuntu虚拟机。",
        { b =>
            h2(b, "Multipass，一款更轻量级的虚拟机！")
            p(b, "最近，打算在 Mac 电脑上安装一个虚拟机，用来学习 K8S。首先想到的是 Vmware 和 Parallels Desktop，然后打开浏览器找了找，发现都只提供付费版本，只有 Parallels Desktop 提供了 14 天的免费试用。")
            p(b, "然后，开始尝试使用免费 VirtualBox，但是在安装 CentOS 的时候，貌似因为 MacOS 最新版本的原因，总是报错，花费了好几天的时间，试过各种方案，最终解决无果，就放弃了。")
            p(b, "就在要放弃的时候，突然在 Ubuntu 官网进行冲浪的时候，发现了一款叫 Multipass 的东西。它可以快速在电脑上快速搭建一个轻量级的虚拟机，并且相比于 Vmware 更加轻量，只需一行命令快速创建 Ubuntu 虚拟机。")
            h3(b, "Multipass 简介")
            p(b, "Multipass 是一个轻量虚拟机管理器，是由 Ubuntu 运营公司 Canonical 所推出的开源项目。运行环境支持 Linux、Windows、macOS。在不同的操作系统上，使用的是不同的虚拟化技术：Linux 上使用 KVM、Windows 上使用 Hyper-V、macOS 中使用 HyperKit 以最小开销运行VM。")
            p(b, "Multipass 提供了一个命令行界面来启动和管理 Linux 实例。下载一个全新的镜像需要几秒钟的时间，并且在几分钟内就可以启动并运行 VM。")
            h3(b, "安装与创建虚拟机")
            p(b, "可以从 https://multipass.run/ 下载对应操作系统版本安装，也可以使用 brew cask install multipass 命令行安装。安装完成后执行 multipass --version 查看版本。")
            p(b, "创建虚拟机只需一行命令：multipass launch -n vm01 -c 1 -m 1G -d 10G。其中 -n 指定名称、-c 指定CPU核心数、-m 指定内存大小、-d 指定硬盘大小。使用 multipass find 可查看可供下载的 Ubuntu 镜像列表。")
            h3(b, "操作虚拟机")
            p(b, "使用 multipass list 查看虚拟机列表，multipass info vm01 查看虚拟机详细信息。通过 multipass shell vm01 进入虚拟机内部，或使用 multipass exec vm01 pwd 在外部执行命令。")
            p(b, "Multipass 还提供类似 Docker 的挂载数据卷功能：multipass mount /Users/moxi/hello vm01:/hello。使用 multipass transfer 命令可以将宿主机文件发送到虚拟机内部。")
            p(b, "可以通过 multipass start/stop/delete/purge 命令来管理实例的生命周期。还支持 --cloud-init 选项进行容器启动初始化配置，例如自动安装 Node.js 等软件。")
            h3(b, "总结")
            p(b, "使用了一阵子后，Multipass 在使用起来很简洁直观，在整体操作上和 docker 类似。如果想在自己电脑上快速搭建一个 Linux 系统用于学习的话，选择使用 Multipass 还是非常方便的。唯一不足的是 Multipass 只支持 Ubuntu 镜像，对于习惯 CentOS 的用户来说可能不太习惯。")
            a(b, attrs("href", "https://www.cnblogs.com/satire/p/15681820.html"), "阅读原文")
        }
    )
}
