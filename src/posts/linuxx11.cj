package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxx11Post(): Post {
    return Post(
        "linuxx11",
        "linux服务器通过X11实现图形化界面显示 - 轻轻的吻 - 博客园",
        "2024-09-27",
        "原文待补充：linux服务器通过X11实现图形化界面显示 - 轻轻的吻 - 博客园",
        { b =>
            h2(b, "linux服务器通过X11实现图形化界面显示 - 轻轻的吻 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/yuanqiangfei/p/11612815.html"), "阅读原文")
        }
    )
}
