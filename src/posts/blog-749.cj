package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog749Post(): Post {
    return Post(
        "blog-749",
        "中国开源云联盟-木兰开源许可证",
        "2024-08-20",
        "原文待补充：中国开源云联盟-木兰开源许可证",
        { b =>
            h2(b, "中国开源云联盟-木兰开源许可证")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://license.coscl.org.cn/"), "阅读原文")
        }
    )
}
