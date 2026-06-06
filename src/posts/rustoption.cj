package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustoptionPost(): Post {
    return Post(
        "rustoption",
        "Rust的Option细节",
        "[https://www.yuanguohuo.com/2020/02/20/rust-option/](https://www.yuanguohuo.com/2020/02/20/rust-option/)",
        "原文待补充：Rust的Option细节",
        { b =>
            h2(b, "Rust的Option细节")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Yuanguo's Blog"), "阅读原文")
        }
    )
}
