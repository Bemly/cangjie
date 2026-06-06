package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxbingwallubuntulinuxPost(): Post {
    return Post(
        "linuxbingwallubuntulinux",
        "在Linux下安装BingWall：适用于Ubuntu的必应壁纸应用_Linux教程_云网牛站",
        "2021-12-17",
        "许多人喜欢将Bing的当日图像用作桌面壁纸，这个功能在Ubuntu系统上非常容易实现，安装和使用BingWall就可以。",
        { b =>
            h2(b, "在Linux下安装BingWall：适用于Ubuntu的必应壁纸应用")
            p(b, "许多人喜欢将Bing的当日图像用作桌面壁纸，这个功能在Ubuntu系统上非常容易实现，安装和使用BingWall就可以，一款Bing Wallpaper App（必应壁纸应用）。")
            h2(b, "BingWall介绍")
            p(b, "BingWall安装后，它可以让您下载Bing的特色照片并将其设置为Linux桌面上的桌面背景。与其他可用软件相比，此Bing壁纸应用的一大优势在于它是最新的，可以正常使用和维护。")
            p(b, "BingWall拥有一个简单、直接的UI（它具有一个UI很重要，因为许多类似的实用程序在后台运行且没有可见的指示），据说它是为GNOME桌面设计的，但内置于Qt中。")
            p(b, "该应用程序可让您查看十个不同国家/地区的当天Bing壁纸（首页上的图像会根据您的位置而有所不同），特点如下：")
            p(b, "1]、允许列出10个国家/地区的每日必应墙纸（必应API支持全部）。2]、简单易用的简洁界面。3]、下载壁纸并将其保存在可访问的位置。4]、从应用程序内部浏览/设置壁纸。5]、深色主题/黑暗主题支持。")
            h2(b, "在Linux下安装BingWall的方法")
            p(b, "您可以通过终端窗口运行Snap命令在Ubuntu 16.04、Ubuntu 18.04 LTS及更高版本上安装BingWall：")
            raw(b, "<blockquote>sudo snap install bing-wall</blockquote>")
            p(b, "如需安装latest/edge版本，则运行以下命令：")
            raw(b, "<blockquote>sudo snap install bing-wall --edge</blockquote>")
            p(b, "经测试，BingWall可在Arch Linux、CentOS、Debian、elementary OS、Fedora、KDE Neon、Kubuntu、Manjaro、Linux Mint、openSUSE、Red Hat Enterprise Linux、Ubuntu上安装和运行。")
            p(b, "安装后，启动BingWall以浏览当天的各种Bing图像并将其设置为桌面壁纸。")
            a(b, attrs("href", "https://www.ywnz.com/linuxjc/6572.html"), "阅读原文")
        }
    )
}
