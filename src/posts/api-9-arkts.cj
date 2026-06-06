package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApi9ArktsPost(): Post {
    return Post(
        "api-9-arkts",
        "API 9 ArkTS开发，没有相机吗。。。-华为开发者论坛",
        "[https://developer.huawei.com/consumer/cn/forum/topic/0207...](https://developer.huawei.com/consumer/cn/forum/topic/0207134125927876113?fid=0102683795438680754)",
        "原文待补充：API 9 ArkTS开发，没有相机吗。。。-华为开发者论坛",
        { b =>
            h2(b, "API 9 ArkTS开发，没有相机吗。。。-华为开发者论坛")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "华为开发者联盟"), "阅读原文")
        }
    )
}
