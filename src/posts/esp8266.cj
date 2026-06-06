package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEsp8266Post(): Post {
    return Post(
        "esp8266",
        "ESP8266型号对比 - 崔安兵 - 博客园",
        "2024-10-18",
        "原文待补充：ESP8266型号对比 - 崔安兵 - 博客园",
        { b =>
            h2(b, "ESP8266型号对比 - 崔安兵 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/cuianbing/p/14377800.html"), "阅读原文")
        }
    )
}
