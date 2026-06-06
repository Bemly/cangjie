package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog17Post(): Post {
    return Post(
        "blog-17",
        "更多选择",
        "[https://www.ubuntukylin.com/news/1725-cn.html](https://www.ubuntukylin.com/news/1725-cn.html)",
        "原文待补充：更多选择",
        { b =>
            h2(b, "更多选择")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Ubuntu Kylin 20.04 Pro（RISC-V）版本正式发布"), "阅读原文")
        }
    )
}
