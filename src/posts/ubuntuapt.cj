package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntuaptPost(): Post {
    return Post(
        "ubuntuapt",
        "Ubuntu配置apt国内源_周先森爱吃素的博客-CSDN博客_配置apt源",
        "2021-10-03",
        "原文待补充：Ubuntu配置apt国内源_周先森爱吃素的博客-CSDN博客_配置apt源",
        { b =>
            h2(b, "Ubuntu配置apt国内源_周先森爱吃素的博客-CSDN博客_配置apt源")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/zhouchen1998/article/details/104496149"), "阅读原文")
        }
    )
}
