package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKal1LinuxGklbbPost(): Post {
    return Post(
        "kal1-linux-gklbb",
        "KAL1 LINUX 官方网站 --- 下载页 - GKLBB - 博客园",
        "2023-04-05",
        "原文待补充：KAL1 LINUX 官方网站 --- 下载页 - GKLBB - 博客园",
        { b =>
            h2(b, "KAL1 LINUX 官方网站 --- 下载页 - GKLBB - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/GKLBB/p/16753172.html"), "阅读原文")
        }
    )
}
