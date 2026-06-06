package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWebwafwafPost(): Post {
    return Post(
        "webwafwaf",
        "[转]Web应用防火墙WAF详解_南墙waf站点配置-CSDN博客",
        "2024-09-26",
        "原文待补充：[转]Web应用防火墙WAF详解_南墙waf站点配置-CSDN博客",
        { b =>
            h2(b, "[转]Web应用防火墙WAF详解_南墙waf站点配置-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/heiyeshuwu/article/details/51325830"), "阅读原文")
        }
    )
}
