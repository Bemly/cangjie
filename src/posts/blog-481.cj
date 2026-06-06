package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog481Post(): Post {
    return Post(
        "blog-481",
        "卡西欧手表上的城市代码表-百度文库",
        "2021-12-05",
        "原文待补充：卡西欧手表上的城市代码表-百度文库",
        { b =>
            h2(b, "卡西欧手表上的城市代码表-百度文库")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wk.baidu.com/view/6d3232c7eef9aef8941ea76e58fafab069dc4497?callWelfare=1&wiseType=voucher&failUrlType=1&wiseQuery=jed+thr+dxb+hnl"), "阅读原文")
        }
    )
}
