package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIpadoslinuxJingosPost(): Post {
    return Post(
        "ipadoslinux-jingos",
        "全球首个iPadOS风格、专为平板打造的Linux - JingOS",
        "2021-02-01",
        "原文待补充：全球首个iPadOS风格、专为平板打造的Linux - JingOS",
        { b =>
            h2(b, "全球首个iPadOS风格、专为平板打造的Linux - JingOS")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cn.jingos.com/"), "阅读原文")
        }
    )
}
