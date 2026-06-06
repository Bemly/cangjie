package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxGrubcfggrub2MkconfigPost(): Post {
    return Post(
        "linux-grubcfggrub2-mkconfig",
        "linux 修改grub.cfg开机启动参数后，使用grub2-mkconfig 命令还是无效...",
        "2021-10-02",
        "原文待补充：linux 修改grub.cfg开机启动参数后，使用grub2-mkconfig",
        { b =>
            h2(b, "linux 修改grub.cfg开机启动参数后，使用grub2-mkconfig 命令还是无效...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/daoba_wolf/article/details/106805080"), "阅读原文")
        }
    )
}
