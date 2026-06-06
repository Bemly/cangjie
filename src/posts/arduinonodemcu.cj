package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArduinonodemcuPost(): Post {
    return Post(
        "arduinonodemcu",
        "Arduino杀手在此！！NodeMCU小白手把手入门（一）（持续更新） - 滴漏咖啡 - 博客园",
        "2024-10-18",
        "原文待补充：Arduino杀手在此！！NodeMCU小白手把手入门（一）（持续更新） - 滴",
        { b =>
            h2(b, "Arduino杀手在此！！NodeMCU小白手把手入门（一）（持续更新） - 滴漏咖啡 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/hilary0614/p/esp8266.html"), "阅读原文")
        }
    )
}
