package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog428Post(): Post {
    return Post(
        "blog-428",
        "《汇编语言》第三版答案课后练习答案集_数据库_伪技术栈-CSDN博客",
        "2021-01-22",
        "原文待补充：《汇编语言》第三版答案课后练习答案集_数据库_伪技术栈-CSDN博客",
        { b =>
            h2(b, "《汇编语言》第三版答案课后练习答案集_数据库_伪技术栈-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_43178927/article/details/86661730"), "阅读原文")
        }
    )
}
