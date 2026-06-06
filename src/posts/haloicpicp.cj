package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHaloicpicpPost(): Post {
    return Post(
        "haloicpicp",
        "halo博客：添加萌国ICP备案号_萌icp备案是真的吗_梦中小城的博客-CSDN博客",
        "2023-10-12",
        "原文待补充：halo博客：添加萌国ICP备案号_萌icp备案是真的吗_梦中小城的博客-CSD",
        { b =>
            h2(b, "halo博客：添加萌国ICP备案号_萌icp备案是真的吗_梦中小城的博客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_60631821/article/details/124783734"), "阅读原文")
        }
    )
}
