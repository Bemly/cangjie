package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAndroidPost(): Post {
    return Post(
        "android",
        "Android 开发者",
        "[https://developer.android.google.cn/index.html](https://developer.android.google.cn/index.html)",
        "原文待补充：Android 开发者",
        { b =>
            h2(b, "Android 开发者")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Android Developers"), "阅读原文")
        }
    )
}
