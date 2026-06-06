package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRdesktopwindowslinuxPost(): Post {
    return Post(
        "rdesktopwindowslinux",
        "使用rdesktop来在Windows和Linux之间共享数据 - 云+社区 - 腾讯云",
        "2021-09-14",
        "原文待补充：使用rdesktop来在Windows和Linux之间共享数据 - 云+社区 -",
        { b =>
            h2(b, "使用rdesktop来在Windows和Linux之间共享数据 - 云+社区 - 腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/1559474"), "阅读原文")
        }
    )
}
