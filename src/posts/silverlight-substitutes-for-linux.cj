package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSilverlightSubstitutesForLinuxPost(): Post {
    return Post(
        "silverlight-substitutes-for-linux",
        "Silverlight Substitutes for Linux",
        "[https://www.linux.org/threads/silverlight-substitutes-for...](https://www.linux.org/threads/silverlight-substitutes-for-linux.11124/)",
        "原文待补充：Silverlight Substitutes for Linux",
        { b =>
            h2(b, "Silverlight Substitutes for Linux")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Linux.org"), "阅读原文")
        }
    )
}
