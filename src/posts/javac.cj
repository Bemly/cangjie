package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavacPost(): Post {
    return Post(
        "javac",
        "java和c#区别--内部类 - 江境纣州 - 博客园",
        "2023-05-01",
        "原文待补充：java和c#区别--内部类 - 江境纣州 - 博客园",
        { b =>
            h2(b, "java和c#区别--内部类 - 江境纣州 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/a924453846/articles/16716185.html"), "阅读原文")
        }
    )
}
