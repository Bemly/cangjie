package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavaacmAcmicpcPost(): Post {
    return Post(
        "javaacm-acmicpc",
        "Java多线程在ACM竞赛中的应用 - ACM/ICPC信息站",
        "2025-04-06",
        "原文待补充：Java多线程在ACM竞赛中的应用 - ACM/ICPC信息站",
        { b =>
            h2(b, "Java多线程在ACM竞赛中的应用 - ACM/ICPC信息站")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://acmicpc.info/archives/184"), "阅读原文")
        }
    )
}
