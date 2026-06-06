package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIndexOfOsdnarchLinuxGuiPost(): Post {
    return Post(
        "index-of-osdnarch-linux-gui",
        "Index of /osdn/arch-linux-gui/",
        "[https://mirrors.tuna.tsinghua.edu.cn/osdn/arch-linux-gui/](https://mirrors.tuna.tsinghua.edu.cn/osdn/arch-linux-gui/)",
        "原文待补充：Index of /osdn/arch-linux-gui/",
        { b =>
            h2(b, "Index of /osdn/arch-linux-gui/")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "清华大学开源软件镜像站 \\..."), "阅读原文")
        }
    )
}
