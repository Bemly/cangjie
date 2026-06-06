package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxandroidFileTransferLinuxGvfsMtpPost(): Post {
    return Post(
        "linuxandroid-file-transfer-linux-gvfs-mtp",
        "linux下用android-file-transfer-linux替换掉gvfs-mtp来挂载mtp",
        "2021-09-11",
        "在Linux下使用android-file-transfer-linux替换gvfs-mtp来挂载MTP设备，解决gvfs-mtp读取文件卡顿的问题。",
        { b =>
            h2(b, "问题现状")
            p(b, "在使用gvfs-mtp挂载的时候，无论读取文件还是获取对应文件夹下所有文件的路径等操作，都非常的卡顿，比本地慢了大概100倍。所以选择使用android-file-transfer-linux来挂载设备是非常优秀的，感觉就是gvfs-mtp协议层的问题。")
            h2(b, "仓库地址")
            p(b, "GitHub地址：https://github.com/whoozle/android-file-transfer-linux/")
            h2(b, "如何使用mount工具挂载")
            p(b, "android-file-transfer-linux的cmake工程编译提供了一个aft-mtp-mount工具。使用方法：创建挂载目录后执行 aft-mtp-mount ~/mydevice1 即可挂载设备。")
            p(b, "可以多设备挂载，只需要路径不同即可。例如：mkdir ~/mydevice1 && aft-mtp-mount ~/mydevice1，然后 mkdir ~/mydevice2 && aft-mtp-mount ~/mydevice2。")
            h2(b, "卸载设备")
            p(b, "使用 fusermount -u ~/mydevice1 命令卸载设备。")
            h2(b, "挂载不成功的解决方法")
            p(b, "如果挂载不成功，你需要把gvfs-mtp或者其他正在挂载或者使用mtp的程序给kill掉，才能挂载成功。")
            p(b, "测试平台：国产操作系统UOS1020(deepin)。如果你对gvfs-mtp或mtpfs感到满意则不需要此软件。如果遇到崩溃、USB冻结和文件损坏的问题，则此软件非常适合你。")
            a(b, attrs("href", "https://blog.csdn.net/qq_43081702/article/details/109532022"), "阅读原文")
        }
    )
}
