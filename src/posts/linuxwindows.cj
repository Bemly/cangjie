package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxwindowsPost(): Post {
    return Post(
        "linuxwindows",
        "Linux和Windows间的远程桌面访问_过了即是客-CSDN博客",
        "2021-09-12",
        "本文介绍了在Linux系统上如何使用RDP协议和VNC协议进行远程桌面访问，包括rdesktop、grdesktop、krdc、xrdp、x11vnc等工具的安装和使用方法。",
        { b =>
            h2(b, "Linux和Windows间的远程桌面访问")
            p(b, "在Windows上面，我们都用过系统自带的远程桌面连接或者TeamViewer这样的工具，可以方便的让我们用图形化方式远程操作其他计算机。但是在Linux上，我们一般都是使用SSH来操作终端。那么在Linux上有没有一些工具可以让我们像Windows那样用图形化的方式来访问桌面呢？答案当然是有的。")
            p(b, "远程桌面连接主要使用两种协议，第一种就是微软在Windows上的RDP（Remote Desktop Protocol）协议，第二种就是VNC（Virtual Network Console）协议。从使用效果上来说，VNC协议更加优秀，所以如果有条件的话还是推荐大家使用VNC协议的工具。")
            h2(b, "RDP协议")
            p(b, "rdesktop实现了RDP协议，允许我们在Linux系统上远程登录Windows系统。以深度系统为例，安装Rdesktop使用下面的命令：")
            raw(b, "<pre><code>sudo apt install rdesktop</code></pre>")
            p(b, "安装完成之后，使用类似下面的命令来访问远程Windows系统：")
            raw(b, "<pre><code>rdesktop -g 1440x900 -P -z -x l -r sound:off -u windowsuser 192.168.31.100:3389</code></pre>")
            p(b, "参数说明：-g指定分辨率，-P启用位图缓存，-z启用RDP数据流压缩，-x l使用局域网级别的图像质量，-r sound:off关闭声音，-u指定用户。如果希望使用全屏方式，可以在-g参数那里使用100%。")
            p(b, "grdesktop是Gnome桌面的远程登录前端工具，krdc是KDE桌面的rdp和vnc连接工具。如果希望在Windows上用RDP协议远程登录到Linux系统，可以安装xrdp：")
            raw(b, "<pre><code>sudo apt install xrdp\nsudo systemctl enable xrdp\nsudo systemctl start xrdp</code></pre>")
            h2(b, "VNC协议")
            p(b, "x11vnc可以让远程访问者控制本地的实际显示器。安装并启动：")
            raw(b, "<pre><code>sudo apt install x11vnc\nx11vnc -passwd PASSWORD -display :0 -forever</code></pre>")
            p(b, "Linux上的VNC客户端有Vinagre（Gnome桌面）、KRDC（KDE桌面）和Remmina等。在Windows上常用的有RealVNC（收费）、UltraVNC（免费）和TightVNC（免费），其中免费的TightVNC效果不错，完全够用。")
            a(b, attrs("href", "https://blog.csdn.net/u011054333/article/details/79905102"), "阅读原文")
        }
    )
}
