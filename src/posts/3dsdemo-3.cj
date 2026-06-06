package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB3dsdemo3Post(): Post {
    return Post(
        "3dsdemo-3",
        "任天堂3DS自制程序开发环境搭建，附中文电子书阅读器程序DEMO (附源码下载)_糖鸡喝得_新浪博客",
        "2020-03-07",
        "原文待补充：任天堂3DS自制程序开发环境搭建，附中文电子书阅读器程序DEMO (附源码下载)",
        { b =>
            h2(b, "任天堂3DS自制程序开发环境搭建，附中文电子书阅读器程序DEMO (附源码下载)_糖鸡喝得_新浪博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://blog.sina.com.cn/s/blog_6f38945b0102v4ic.html"), "阅读原文")
        }
    )
}
