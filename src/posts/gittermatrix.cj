package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGittermatrixPost(): Post {
    return Post(
        "gittermatrix",
        "开发人员即时通信平台Gitter现已经转移使用Matrix开源协议",
        "2022-07-13",
        "原文待补充：开发人员即时通信平台Gitter现已经转移使用Matrix开源协议",
        { b =>
            h2(b, "开发人员即时通信平台Gitter现已经转移使用Matrix开源协议")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1685585580200135374&wfr=spider&for=pc&searchword=matrix%20irc%20gitter"), "阅读原文")
        }
    )
}
