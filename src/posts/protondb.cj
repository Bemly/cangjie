package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getProtondbPost(): Post {
    return Post(
        "protondb",
        "ProtonDB",
        "[https://www.protondb.com/](https://www.protondb.com/)",
        "原文待补充：ProtonDB",
        { b =>
            h2(b, "ProtonDB")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Gaming know-how from the Linux and ..."), "阅读原文")
        }
    )
}
