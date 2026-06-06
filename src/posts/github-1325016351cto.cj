package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub1325016351ctoPost(): Post {
    return Post(
        "github-1325016351cto",
        "GitHub 长期被中国人“霸榜”？看完榜单我呆了..._13250163的技术博客_51CTO博客",
        "2022-05-28",
        "原文待补充：GitHub 长期被中国人“霸榜”？看完榜单我呆了..._13250163的技术",
        { b =>
            h2(b, "GitHub 长期被中国人“霸榜”？看完榜单我呆了..._13250163的技术博客_51CTO博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.51cto.com/u_13260163/3251201"), "阅读原文")
        }
    )
}
