package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVoidLinuxlightningFastLinuxHowtPost(): Post {
    return Post(
        "void-linuxlightning-fast-linux-howt",
        "Void Linux：一个无系统的Lightning Fast Linux发行版",
        "2025-01-07",
        "Void Linux是一个从头开始构建的独立滚动发布Linux发行版，使用runit作为初始化系统。",
        { b =>
            h2(b, "Void Linux简介")
            p(b, "Void Linux是一个从头开始构建的Linux发行版，不基于任何已知的主要发行版。它是一个独立开发的滚动发布通用操作系统，适用于x86、x86_64、arm等多种体系结构。该发行版由Juan Romero Pardines创建于2008年，他是NetBSD的前开发者。Void Linux完全由志愿者在GitHub上合作开发。")
            p(b, "将Void与其他发行版区分开来的一个特殊功能是其速度和响应能力。从启动过程到启动应用程序，一切都非常迅速。此外，Void Linux也是坚如磐石的，并且在系统资源方面异常轻松。它提供了不同的安装映像，从网络/CLI安装到Xfce、Cinnamon、Enlightment、Mate、LXDE和LXQT等风格的实时映像。")
            h2(b, "无systemd的设计")
            p(b, "Void是大多数Linux发行版的一个显著例外，因为它使用runit作为初始化系统，而不是systemd。这使Void在初始化系统和设计理念上更像BSD。Runit是一个极简主义且速度极快的init系统，易于配置，更符合Linux发行版默认使用的旧守护进程工具。")
            p(b, "在runit中部署守护程序很简单：制作一个目录，编写一个短期脚本，制作一个符号链接，守护进程就部署好了。大多数Void包都包含目录和运行脚本，所以只需要制作符号链接即可。管理服务的所有脚本都位于/var/service/目录，可以在/etc/sv/中添加、修改或删除。")
            h2(b, "包管理系统XBPS")
            p(b, "Void的一个显著独特之处是其包管理系统XBPS（X Binary Package System），这是从头开始编写的本机系统包管理器。XBPS速度极快，与Arch的Pacman非常相似，但将功能划分为不同的命令：xbps-install用于更新和安装，xbps-remove用于卸载，xbps-query用于查询存储库和已安装的系统。")
            p(b, "Void Linux可以说是所有Linux发行版中最像BSD的。BSD的一个特点是端口树，允许从源代码构建各种各样的软件。Void也支持双包管理，二进制文件和源文件都可用并且完全受支持。")
            h2(b, "安装与使用")
            p(b, "Void使用一个简单的基于文本的安装程序来引导完成传统的安装步骤。实时ISO的一个显著功能是，用户可以选择从ISO上包含的软件包或网络源安装系统，从而避免安装后需要升级。与Arch或Gentoo类似，Void可以在底座安装后变成你想要组装的任何东西。")
            p(b, "Void Linux不适合Linux新手，因为它不会牵着你的手。但它是高度可定制和极简主义的。它的独特之处在于，是一个从下到上具有runit和XBPS包管理器的真正类似UNIX的发行版。对于喜欢KISS哲学的人来说，Void Linux是一个极好的选择。")
            a(b, attrs("href", "https://www.howtotech.cn/10134.html"), "阅读原文")
        }
    )
}
