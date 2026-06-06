package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGmeekPost(): Post {
    return Post(
        "gmeek",
        "可能是目前最方便的个人博客搭建方法——Gmeek 博客框架 - 少数派",
        "2024-08-22",
        "原文待补充：可能是目前最方便的个人博客搭建方法——Gmeek 博客框架 - 少数派",
        { b =>
            h2(b, "可能是目前最方便的个人博客搭建方法——Gmeek 博客框架 - 少数派")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://sspai.com/post/88950"), "阅读原文")
        }
    )
}
