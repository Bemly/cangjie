package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog23Post(): Post {
    return Post(
        "blog-23",
        "使用 rdesktop 在 Windows 和 Linux 之间共享数据",
        "2021-09-14",
        "介绍如何使用 rdesktop 远程桌面客户端连接 Windows 并实现文件共享，包括连接选项和磁盘共享配置。",
        { b =>
            p(b, "rdesktop 是一个开源的远程桌面客户端，用来从 Linux 机器连接到 Windows 机器。它遵循 RDP 协议，操作简洁，功能比较完备。")
            h2(b, "安装")
            raw(b, "<pre><code>sudo apt-get install rdesktop</code></pre>")
            h2(b, "基本连接")
            p(b, "最简单的连接方式：")
            raw(b, "<pre><code>rdesktop -u username a.b.c.d</code></pre>")
            p(b, "使用密码和自定义窗口大小：")
            raw(b, "<pre><code>rdesktop -u username a.b.c.d -p my-password -g 1200x900</code></pre>")
            p(b, "使用 -x 选项使字体变光滑：")
            raw(b, "<pre><code>rdesktop -u username a.b.c.d -p my-password -g 1200x900 -x 0x80</code></pre>")
            p(b, "其中 0x80 可改为 0x81（LAN default mode）、0x8F（broadband default mode）等。")
            h2(b, "共享文件")
            p(b, "在 Linux 下创建目录，然后连接时使用 -r disk 选项进行文件共享：")
            raw(b, "<pre><code>rdesktop -u username a.b.c.d -p my-password -g 1200x900 -x 0x80 -r sound:local -r disk:LinuxPictures=/home/username/Pictures</code></pre>")
            p(b, "注意：Linux 目录路径必须采用绝对路径；需要同时设置 -r sound:local 才能正常工作。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/1559474"), "阅读原文")
        }
    )
}
