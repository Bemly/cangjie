package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKaliLinuxPost(): Post {
    return Post(
        "kali-linux",
        "手机端（安卓）安装 Kali Linux 系统详细教程",
        "2023-04-05",
        "原文待补充：手机端（安卓）安装 Kali Linux 系统详细教程",
        { b =>
            h2(b, "手机端（安卓）安装 Kali Linux 系统详细教程")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://knightyun.github.io/2020/01/10/linux-kali-android"), "阅读原文")
        }
    )
}
