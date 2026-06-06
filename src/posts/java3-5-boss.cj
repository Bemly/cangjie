package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJava35BossPost(): Post {
    return Post(
        "java3-5-boss",
        "「Java中级[3-5年]沉稳个人简历模板免费下载_在线编辑」- BOSS直聘",
        "2026-03-11",
        "原文待补充：「Java中级[3-5年]沉稳个人简历模板免费下载_在线编辑」- BOSS直聘",
        { b =>
            h2(b, "「Java中级[3-5年]沉稳个人简历模板免费下载_在线编辑」- BOSS直聘")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cv.zhipin.com/job/p100101/8c03be49019eb94103Y~.html"), "阅读原文")
        }
    )
}
