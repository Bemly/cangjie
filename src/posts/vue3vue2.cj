package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVue3vue2Post(): Post {
    return Post(
        "vue3vue2",
        "面试官：vue3有了解过吗？能说说跟vue2的区别吗？",
        "[https://vue3js.cn/interview/vue/vue3_vue2.html#%E4%B8%80%...](https://vue3js.cn/interview/vue/vue3_vue2.html#%E4%B8%80%E3%80%81vue3%E4%BB%8B%E7%BB%8D)",
        "原文待补充：面试官：vue3有了解过吗？能说说跟vue2的区别吗？",
        { b =>
            h2(b, "面试官：vue3有了解过吗？能说说跟vue2的区别吗？")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "web前端面试 - 面试官系列"), "阅读原文")
        }
    )
}
