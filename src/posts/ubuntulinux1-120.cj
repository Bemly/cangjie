package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntulinux1120Post(): Post {
    return Post(
        "ubuntulinux1-120",
        "让你的安卓手机运行Ubuntu——便携Linux介绍（1） - 电脑120",
        "2022-07-20",
        "原文待补充：让你的安卓手机运行Ubuntu——便携Linux介绍（1） - 电脑120",
        { b =>
            h2(b, "让你的安卓手机运行Ubuntu——便携Linux介绍（1） - 电脑120")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://diannao120.henau.edu.cn/archives/2332.html"), "阅读原文")
        }
    )
}
