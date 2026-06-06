package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCentosCjkttyPost(): Post {
    return Post(
        "centos-cjktty",
        "centos 编译安装新内核并添加中文内核补丁(cjktty)模块 - 尘星空 - 博客园",
        "2024-08-10",
        "原文待补充：centos 编译安装新内核并添加中文内核补丁(cjktty)模块 - 尘星空 ",
        { b =>
            h2(b, "centos 编译安装新内核并添加中文内核补丁(cjktty)模块 - 尘星空 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/whq5051/p/16058860.html"), "阅读原文")
        }
    )
}
