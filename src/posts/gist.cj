package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGistPost(): Post {
    return Post(
        "gist",
        "利用 Gist 在博客中同步代码的一种方法",
        "[http://www.wukai.me/2022/02/28/gist-for-blog/](http://www.wukai.me/2022/02/28/gist-for-blog/)",
        "原文待补充：利用 Gist 在博客中同步代码的一种方法",
        { b =>
            h2(b, "利用 Gist 在博客中同步代码的一种方法")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "吴锴的博客"), "阅读原文")
        }
    )
}
