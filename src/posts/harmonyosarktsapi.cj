package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHarmonyosarktsapiPost(): Post {
    return Post(
        "harmonyosarktsapi",
        "HarmonyOS的ArkTsapi没有相机组件-华为开发者论坛",
        "[https://developer.huawei.com/consumer/cn/forum/topic/0207...](https://developer.huawei.com/consumer/cn/forum/topic/0207126719049632247?fid=0102683795438680754)",
        "原文待补充：HarmonyOS的ArkTsapi没有相机组件-华为开发者论坛",
        { b =>
            h2(b, "HarmonyOS的ArkTsapi没有相机组件-华为开发者论坛")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "华为开发者联盟"), "阅读原文")
        }
    )
}
