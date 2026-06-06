package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWorkerPost(): Post {
    return Post(
        "worker",
        "【全网首发】永不被盗的订阅转换方法！使用worker搭建永久免费的私人反代订阅转换服务，新手小...",
        "2024-09-14",
        "原文待补充：【全网首发】永不被盗的订阅转换方法！使用worker搭建永久免费的私人反代订阅转",
        { b =>
            h2(b, "【全网首发】永不被盗的订阅转换方法！使用worker搭建永久免费的私人反代订阅转换服务，新手小...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://bulianglin.com/archives/psub.html#"), "阅读原文")
        }
    )
}
