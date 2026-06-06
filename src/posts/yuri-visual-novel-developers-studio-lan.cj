package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYuriVisualNovelDevelopersStudioLanPost(): Post {
    return Post(
        "yuri-visual-novel-developers-studio-lan",
        "Yuri Visual Novel Developers - Studio Élan",
        "2026-03-21",
        "原文待补充：Yuri Visual Novel Developers - Studio Él",
        { b =>
            h2(b, "Yuri Visual Novel Developers - Studio Élan")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://vnstudioelan.tumblr.com/"), "阅读原文")
        }
    )
}
