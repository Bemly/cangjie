package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApi9Post(): Post {
    return Post(
        "api9",
        "api9不提供相机功能吗-华为开发者论坛",
        "[https://developer.huawei.com/consumer/cn/forum/topic/0207...](https://developer.huawei.com/consumer/cn/forum/topic/0207132511153681236?fid=0102683795438680754)",
        "原文待补充：api9不提供相机功能吗-华为开发者论坛",
        { b =>
            h2(b, "api9不提供相机功能吗-华为开发者论坛")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "华为开发者联盟"), "阅读原文")
        }
    )
}
