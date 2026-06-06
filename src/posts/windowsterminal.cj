package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWindowsterminalPost(): Post {
    return Post(
        "windowsterminal",
        "windows.terminal 外观设置（亚克力+复古） - 佳人在湄 - 博客园",
        "2021-11-21",
        "原文待补充：windows.terminal 外观设置（亚克力+复古） - 佳人在湄 - 博",
        { b =>
            h2(b, "windows.terminal 外观设置（亚克力+复古） - 佳人在湄 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/zhangz0126/p/14436523.html"), "阅读原文")
        }
    )
}
