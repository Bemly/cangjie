package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHarmonyosapi9Post(): Post {
    return Post(
        "harmonyosapi9",
        "harmonyOS基于api9如何调用相机拍照？-华为开发者论坛",
        "[https://developer.huawei.com/consumer/cn/forum/topic/0209...](https://developer.huawei.com/consumer/cn/forum/topic/0209125693816338208?fid=0101587866109860105)",
        "原文待补充：harmonyOS基于api9如何调用相机拍照？-华为开发者论坛",
        { b =>
            h2(b, "harmonyOS基于api9如何调用相机拍照？-华为开发者论坛")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "华为开发者联盟"), "阅读原文")
        }
    )
}
