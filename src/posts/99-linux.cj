package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB99linuxPost(): Post {
    return Post(
        "99-linux",
        "99%运维人员都忽略的服务器安全问题 - 咸鱼Linux运维 - 博客园",
        "2024-10-25",
        "原文待补充：99%运维人员都忽略的服务器安全问题 - 咸鱼Linux运维 - 博客园",
        { b =>
            h2(b, "99%运维人员都忽略的服务器安全问题 - 咸鱼Linux运维 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/edisonfish/p/17154312.html"), "阅读原文")
        }
    )
}
