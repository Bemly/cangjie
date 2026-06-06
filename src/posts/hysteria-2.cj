package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHysteria2Post(): Post {
    return Post(
        "hysteria-2",
        "一键脚本安装新版Hysteria 2，不需要域名，垃圾小鸡直接起飞 - 性价比机场测速",
        "2024-09-12",
        "原文待补充：一键脚本安装新版Hysteria 2，不需要域名，垃圾小鸡直接起飞 - 性价比机",
        { b =>
            h2(b, "一键脚本安装新版Hysteria 2，不需要域名，垃圾小鸡直接起飞 - 性价比机场测速")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://duangks.com/archives/155/"), "阅读原文")
        }
    )
}
