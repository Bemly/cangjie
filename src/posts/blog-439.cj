package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog439Post(): Post {
    return Post(
        "blog-439",
        "鱼C工作室-免费编程视频教学",
        "Web开发教学\",
        "原文待补充：鱼C工作室-免费编程视频教学",
        { b =>
            h2(b, "鱼C工作室-免费编程视频教学")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Python教学\\"), "阅读原文")
        }
    )
}
