package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKolinuxPost(): Post {
    return Post(
        "kolinux",
        "感染ko：在linux内核模块中植入代码",
        "[https://xuanxuanblingbling.github.io/rootkit/2022/02/26/ko/](https://xuanxuanblingbling.github.io/rootkit/2022/02/26/ko/)",
        "原文待补充：感染ko：在linux内核模块中植入代码",
        { b =>
            h2(b, "感染ko：在linux内核模块中植入代码")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Clang裁缝店"), "阅读原文")
        }
    )
}
