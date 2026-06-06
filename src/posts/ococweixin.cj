package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOcocweixinPost(): Post {
    return Post(
        "ococweixin",
        "oc引导开机直接进_小白今天教你如何点一点鼠标就能生成适配你机型的oc引导..._weixin...",
        "2021-11-11",
        "原文待补充：oc引导开机直接进_小白今天教你如何点一点鼠标就能生成适配你机型的oc引导...",
        { b =>
            h2(b, "oc引导开机直接进_小白今天教你如何点一点鼠标就能生成适配你机型的oc引导..._weixin...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_39752087/article/details/110302153"), "阅读原文")
        }
    )
}
