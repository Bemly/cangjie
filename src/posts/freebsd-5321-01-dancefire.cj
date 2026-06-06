package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFreebsd532101DancefirePost(): Post {
    return Post(
        "freebsd-5321-01-dancefire",
        "巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01 - Dancefire - 博客园",
        "2022-01-01",
        "Dancefire的技术博客原文，介绍如何通过更换引导程序和内核让FreeBSD 5.3在麒麟2.1-01上启动。",
        { b =>
            h2(b, "巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01")
            p(b, "这是Dancefire在博客园上的技术博客原文。Dancefire的博客座右铭是\"Stay Hungry, Stay Foolish.\" - Steve Jobs。博客共有55篇随笔，累计阅读量近9万。")
            p(b, "麒麟开发组在Dancefire的分析发布之后不久，就删除了网站上的2.0-14/21的光盘镜像，取而代之的是发布了一个新版本2.1-01。")
            p(b, "麒麟2.1-01相对于以前版本进行了特殊化处理：一是用objcopy/strip去掉了符号信息，回避了相似性分析中所用的分析方法；二是修改了引导程序，使得直接引导内核的方式不再可用。")
            p(b, "系统引导一般为多级。在Windows NT/2000中是NT Loader；Linux中可能是Grub；在FreeBSD中是Boot Loader。Grub具有多系统引导能力，也有传递引导权给下一级引导程序的能力。")
            p(b, "麒麟采用Grub作为第一级引导程序，选择\"Kylin\"后加载第二级引导程序。2.0-14/21使用FreeBSD的Boot Loader，而2.1-01修改为专用Boot Loader，既无法启动FreeBSD也无法启动Kylin旧版。")
            p(b, "操作步骤：准备FreeBSD 5.3内核（加上Linux兼容模块），将内核和Boot Loader打包传输到Kylin系统中。在GRUB引导界面修改启动参数，将/boot/booter改为/boot/loader。")
            p(b, "最终成功启动了完整的图形界面，uname显示FreeBSD 5.3-RELEASE。仅替换内核和引导程序就做到了完整系统启动，证实了麒麟2.1-01确实只是\"换了一个门\"。")
            a(b, attrs("href", "https://www.cnblogs.com/dancefire/archive/2006/05/21/1985892.html"), "阅读原文")
        }
    )
}
