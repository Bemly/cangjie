package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSshPost(): Post {
    return Post(
        "ssh",
        "关于ssh密钥登陆遇到的一些问题，以及其解决方法 - 一个博客站点,记录各种事情",
        "2024-09-20",
        "原文待补充：关于ssh密钥登陆遇到的一些问题，以及其解决方法 - 一个博客站点,记录各种事情",
        { b =>
            h2(b, "关于ssh密钥登陆遇到的一些问题，以及其解决方法 - 一个博客站点,记录各种事情")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.logc.icu/post/2020-07-10_21-15/"), "阅读原文")
        }
    )
}
