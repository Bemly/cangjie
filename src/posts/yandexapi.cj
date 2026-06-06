package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYandexapiPost(): Post {
    return Post(
        "yandexapi",
        "如何申请及配置俄罗斯搜索引擎Yandex推送API - 闪电博",
        "2023-02-10",
        "原文待补充：如何申请及配置俄罗斯搜索引擎Yandex推送API - 闪电博",
        { b =>
            h2(b, "如何申请及配置俄罗斯搜索引擎Yandex推送API - 闪电博")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.wbolt.com/how-to-get-yandex-api.html"), "阅读原文")
        }
    )
}
