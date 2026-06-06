package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog22Post(): Post {
    return Post(
        "blog-22",
        "如何往虚拟机内传文件的 3 种方法",
        "2021-09-17",
        "介绍三种在宿主机和虚拟机之间传输文件的方法：共享文件夹、VMware Tools、网络 IP 共享。",
        { b =>
            h2(b, "方法一：共享文件夹")
            p(b, "最适合 Windows 系统，专治各种无法传送问题。在宿主机建立一个共享文件夹，通过 VMware 自带的传文件功能实现。")
            p(b, "在宿主机创建文件夹 → 右键属性 → 共享 → 选择所有者共享。然后在虚拟机设置中：选项 → 共享文件夹 → 总是启用 → 添加共享文件夹路径。")
            p(b, "虚拟机中打开文件资源管理器，访问路径：网络\\\\vmware-host\\Shared Folders\\共享文件夹名")
            h2(b, "方法二：VMware Tools")
            p(b, "安装 VMware Tools 后，可以直接将宿主机的文件拖拽到 VMware 内，或者复制粘贴。前提是要能安装好 VMware Tools。")
            h2(b, "方法三：网络 IP 共享法")
            p(b, "使用第三方工具（如 XFTP 等），利用 IP 共享方式实现文件传送。也可使用软碟通将文件压缩成 ISO 文件，使用映像文件方式共享，但比较麻烦。")
            p(b, "也可以通过百度网盘、腾讯网盘等网络下载方式传输文件。")
            a(b, attrs("href", "https://www.cnblogs.com/chun-xiaolin001/p/10285377.html"), "阅读原文")
        }
    )
}
