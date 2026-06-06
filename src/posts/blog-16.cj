package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog16Post(): Post {
    return Post(
        "blog-16",
        "短视频-快手",
        "2022-03-11",
        "原文待补充：短视频-快手",
        { b =>
            h2(b, "短视频-快手")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.kuaishou.com/short-video/3xnf4ibdguc9mei?authorId=3xc6dup4hdeuh9c&streamSource=search&area=searchxxnull&searchKey=%E6%B0%B8%E8%BF%9C%E5%88%AB%E4%B8%BA%E6%88%98%E4%BA%89%E5%8F%AB%E5%A5%BD&currentPcursor=1"), "阅读原文")
        }
    )
}
