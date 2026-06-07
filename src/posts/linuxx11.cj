package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxx11Post(): Post {
    return Post(
        "linuxx11",
        "linux服务器通过X11实现图形化界面显示 - 轻轻的吻 - 博客园",
        "2024-09-27",
        "介绍基于X11 Forwarding技术和MobaXterm工具，在无图形化界面的Linux服务器上远程显示GUI程序的方法。",
        { b =>
            h2(b, "背景描述")
            p(b, "有些LINUX服务器出于性能和效率的考虑，通常都是没有安装图形化界面的，那么图形化程序在服务器上压根儿就跑不起来，或者无法直接显示出来。可以基于X11 Forwarding技术+MobaXterm工具来解决这个问题。")
            h2(b, "X协议原理")
            p(b, "Linux本身是没有图形化界面的，所谓的图形化界面系统只不过中Linux下的应用程序。这一点和Windows不一样，Windows从Windows 95开始，图形界面就直接在系统内核中实现了。Linux的图形化界面底层都是基于X协议。X协议由X server和X client组成：X server管理主机上与显示相关的硬件设置，负责屏幕画面的绘制与显示；X client（即X应用程序）则主要负责事件的处理（即程序的逻辑）。")
            h2(b, "X11 Forwarding")
            p(b, "X server和X client完全可以运行在不同的机器上，只要彼此通过X协议通信即可。于是就可以在本地显示（X server），运行在服务器上的GUI程序（X client）。这样的操作可以通过SSH X11 Forwarding（转发）来实现。X11中的X指的就是X协议，11指的是采用X协议的第11个版本。")
            h2(b, "MobaXterm工具")
            p(b, "MobaXterm是一款开源、免费的全功能终端软件，与PuTTY类似但更强大。其中一个很实用的功能就是MobaXterm自带X Server，这样就不用在Windows上手动启动X server了。整个实现逻辑是：本地机器采用MobaXterm（自带X server）连接远程服务器，然后在服务器上运行GUI程序（即X client），通过SSH X11 Forwarding转发到本地Windows机器上。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/linuxx11/x11-forward-01.avif", "alt", "X11 Forwarding原理", "style", "max-width:100%"))
            h2(b, "服务器端配置")
            p(b, "修改SSH配置文件/etc/ssh/sshd_config，设置X11Forwarding为yes，X11UseLocalhost为no（禁止将X11转发请求绑定到本地回环地址上），AddressFamily inet（强制使用IPv4通道）。然后重启SSH服务：service ssh restart。")
            h2(b, "连接与验证")
            p(b, "通过MobaXterm SSH连接服务器后，执行xclock程序即可弹出图形界面。常用X Server还有免费的Xming、收费的Xmanager等，但有了MobaXterm一切都变得超级简单。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/linuxx11/x11-forward-02.avif", "alt", "MobaXterm连接", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/linuxx11/x11-forward-03.avif", "alt", "xclock显示", "style", "max-width:100%"))
            a(b, attrs("href", "https://www.cnblogs.com/yuanqiangfei/p/11612815.html"), "阅读原文")
        }
    )
}
