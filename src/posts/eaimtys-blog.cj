package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEaimtysBlogPost(): Post {
    return Post(
        "eaimtys-blog",
        "基于荷尔蒙开发的开源项目 - EAimTY's Blog",
        "2024-08-15",
        "原文待补充：基于荷尔蒙开发的开源项目 - EAimTY's Blog",
        { b =>
            h2(b, "基于荷尔蒙开发的开源项目 - EAimTY's Blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.eaimty.com/2023/opensource-project-based-on-hormone/"), "阅读原文")
        }
    )
}
