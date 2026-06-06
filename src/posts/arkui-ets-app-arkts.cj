package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArkuiEtsAppArktsPost(): Post {
    return Post(
        "arkui-ets-app-arkts",
        "ArkUI eTS app 沉浸式(全屏)状态栏透明设置_arkts 沉浸式状态栏-CSDN博客",
        "2024-03-16",
        "原文待补充：ArkUI eTS app 沉浸式(全屏)状态栏透明设置_arkts 沉浸式状态",
        { b =>
            h2(b, "ArkUI eTS app 沉浸式(全屏)状态栏透明设置_arkts 沉浸式状态栏-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/cbdg3757/article/details/127104358"), "阅读原文")
        }
    )
}
