package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodemcu11Post(): Post {
    return Post(
        "nodemcu-1-1",
        "初识NodeMCU开发板 (第1章-第1节) – 太极创客",
        "2024-10-18",
        "原文待补充：初识NodeMCU开发板 (第1章-第1节) – 太极创客",
        { b =>
            h2(b, "初识NodeMCU开发板 (第1章-第1节) – 太极创客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://www.taichi-maker.com/homepage/esp8266-nodemcu-iot/esp8266-nodemcu-tutorial-index/nodemcu-hardware/"), "阅读原文")
        }
    )
}
