package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJsuiArktsApiPost(): Post {
    return Post(
        "jsui-arkts-api",
        "通用样式-通用-组件-JS服务卡片UI组件参考-ArkTS API参考",
        "[https://developer.huawei.com/consumer/cn/doc/harmonyos-re...](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-service-widget-common-styles-0000001427584980-V2)",
        "原文待补充：通用样式-通用-组件-JS服务卡片UI组件参考-ArkTS API参考",
        { b =>
            h2(b, "通用样式-通用-组件-JS服务卡片UI组件参考-ArkTS API参考")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "华为开发者联盟"), "阅读原文")
        }
    )
}
