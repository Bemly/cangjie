package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavasilverlightadobeAcrobatPost(): Post {
    return Post(
        "javasilverlightadobe-acrobat",
        "为什么 Java、Silverlight、Adobe Acrobat 和其他一些插件不再工作了...",
        "2023-01-17",
        "原文待补充：为什么 Java、Silverlight、Adobe Acrobat 和其他一些",
        { b =>
            h2(b, "为什么 Java、Silverlight、Adobe Acrobat 和其他一些插件不再工作了...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://support.mozilla.org/zh-CN/kb/npapi-plugins?as=u&utm_source=inproduct"), "阅读原文")
        }
    )
}
