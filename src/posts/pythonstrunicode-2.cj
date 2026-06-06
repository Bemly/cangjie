package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPythonstrunicode2Post(): Post {
    return Post(
        "pythonstrunicode-2",
        "python中的str与unicode处理方法",
        "[http://www.pulpcode.cn/2014/12/23/python-encode/](http://www.pulpcode.cn/2014/12/23/python-encode/)",
        "原文待补充：python中的str与unicode处理方法",
        { b =>
            h2(b, "python中的str与unicode处理方法")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Pulpcode"), "阅读原文")
        }
    )
}
