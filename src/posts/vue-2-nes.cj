package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVue2NesPost(): Post {
    return Post(
        "vue-2-nes",
        "Vue 2 - 永无止境的支持（NES）",
        "[https://zh.herodevs.com/support/nes-vue?utm_source=vuejs-...](https://zh.herodevs.com/support/nes-vue?utm_source=vuejs-org&utm_medium=vue2-eol-banner)",
        "原文待补充：Vue 2 - 永无止境的支持（NES）",
        { b =>
            h2(b, "Vue 2 - 永无止境的支持（NES）")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "HeroDevs"), "阅读原文")
        }
    )
}
