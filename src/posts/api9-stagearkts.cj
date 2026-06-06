package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApi9StagearktsPost(): Post {
    return Post(
        "api9-stagearkts",
        "api9 Stage模型下ArkTS唤起相机-华为开发者论坛",
        "[https://developer.huawei.com/consumer/cn/forum/topic/0204...](https://developer.huawei.com/consumer/cn/forum/topic/0204136475694031340?fid=0102683795438680754)",
        "原文待补充：api9 Stage模型下ArkTS唤起相机-华为开发者论坛",
        { b =>
            h2(b, "api9 Stage模型下ArkTS唤起相机-华为开发者论坛")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "华为开发者联盟"), "阅读原文")
        }
    )
}
