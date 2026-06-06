package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntu12041404Post(): Post {
    return Post(
        "ubuntu12041404",
        "Ubuntu12.04/14.04指南",
        "[https://teliute.org/linux/TeUbt/lesson53/lesson53.html](https://teliute.org/linux/TeUbt/lesson53/lesson53.html)",
        "原文待补充：Ubuntu12.04/14.04指南",
        { b =>
            h2(b, "Ubuntu12.04/14.04指南")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Onboard 屏幕键盘"), "阅读原文")
        }
    )
}
