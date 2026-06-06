package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFreebsd532101weixin30449453Post(): Post {
    return Post(
        "freebsd-5321-01weixin30449453",
        "巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01_weixin_30449453...",
        "2022-01-01",
        "本文介绍了一种技巧，即通过更换引导程序和内核的方式，使得FreeBSD5.3能够在麒麟2.1-01系统上启动。",
        { b =>
            h2(b, "巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01")
            p(b, "本文介绍了一种技巧，即通过更换引导程序和内核的方式，使得FreeBSD 5.3能够在麒麟2.1-01系统上启动。作者详细解释了麒麟操作系统引导过程中的变化，并提供具体步骤说明如何实现这一目标。")
            p(b, "上回书说到，麒麟开发组在我的分析发布之后不久，就删除了网站上的2.0-14/21的光盘镜像，取而代之的是发布了一个新版本2.1-01。")
            p(b, "如上回所提到的那样，麒麟2.1-01相对于以前版本(2.0-14/21)进行了特殊化处理。主要是做了两件事情，一个是用objcopy/strip去掉了符号信息，这样\"成功的\"回避了相似性分析中所用的分析方法；再一个就是修改了引导程序，所以用直接引导内核的方式已经不可以用FreeBSD内核启动麒麟了。")
            p(b, "系统引导一般为多级，大多数情况下从MBR接过引导权后会转交给一个比较高级的引导程序。在Windows NT/2000中是NT Loader；Linux中可能是Grub；在FreeBSD中是Boot Loader。")
            p(b, "麒麟为了多系统引导和图形化界面，采用了Grub作为第一级引导程序。在选择了\"Kylin\"后，Grub将加载第二级引导程序。对于2.0-14/21来说使用的是FreeBSD的Boot Loader，而2.1-01开始，麒麟开发组调整了这个引导程序，导致这个Boot Loader属于Kylin 2.1-01专用的Boot Loader，既无法启动FreeBSD，也无法启动Kylin 2.0-14/21。")
            p(b, "证明换门问题很简单，只要将门再换回来就行了。使用FreeBSD的Boot Loader来帮助加载FreeBSD 5.3的内核，最后成功的挂载各个系统模块，并引导图形界面成功。")
            p(b, "需求包括：一个FreeBSD 5.3的内核（建议加上Linux兼容模块），以及一个可以运行的麒麟操作系统2.1-01版本。操作步骤包括准备内核和Boot Loader，通过tar打包传输到Kylin系统中，然后在GRUB引导界面修改启动参数，将/boot/booter改为/boot/loader。")
            p(b, "最终成功的启动了完整的图形界面，从uname中可以看到FreeBSD 5.3-RELEASE。仅替换为FreeBSD 5.3的内核和引导内核用的引导程序，就做到了完整系统的启动。和上回的2.0-14/18一样，麒麟开发组新发布的2.1-01同FreeBSD的\"兼容性\"依旧很不错。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_30449453/article/details/99612213"), "阅读原文")
        }
    )
}
