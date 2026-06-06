package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAmiBiosPost(): Post {
    return Post(
        "ami-bios",
        "AMI BIOS 诊断代码 一 - 豆丁网",
        "2023-09-16",
        "原文待补充：AMI BIOS 诊断代码 一 - 豆丁网",
        { b =>
            h2(b, "AMI BIOS 诊断代码 一 - 豆丁网")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.docin.com/touch/detail.do?id=205929753"), "阅读原文")
        }
    )
}
