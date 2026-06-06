package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUnity3dPost(): Post {
    return Post(
        "unity3d",
        "如何防止Unity3D代码被反编译？",
        "2024-04-07",
        "论坛/讨论：如何防止Unity3D代码被反编译？",
        { b =>
            h2(b, "如何防止Unity3D代码被反编译？")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.zhihu.com/question/25414422/answer/2848915490"), "访问原始链接")
        }
    )
}
