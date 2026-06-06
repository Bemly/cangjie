package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZipAngelkittyPost(): Post {
    return Post(
        "zip-angelkitty",
        "破解Zip加密文件常用的几种方法 - Angel_Kitty - 博客园",
        "2025-09-08",
        "原文待补充：破解Zip加密文件常用的几种方法 - Angel_Kitty - 博客园",
        { b =>
            h2(b, "破解Zip加密文件常用的几种方法 - Angel_Kitty - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/ECJTUACM-873284962/p/9387711.html"), "阅读原文")
        }
    )
}
