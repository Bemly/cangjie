package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodemcuArduinowifiPost(): Post {
    return Post(
        "nodemcu-arduinowifi",
        "NodeMcu -- 像Arduino一样简单的开源可编程固件，还有Wifi哦！",
        "2024-10-18",
        "原文待补充：NodeMcu -- 像Arduino一样简单的开源可编程固件，还有Wifi哦！",
        { b =>
            h2(b, "NodeMcu -- 像Arduino一样简单的开源可编程固件，还有Wifi哦！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.nodemcu.com/index_cn.html"), "阅读原文")
        }
    )
}
