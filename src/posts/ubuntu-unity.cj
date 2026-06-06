package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntuUnityPost(): Post {
    return Post(
        "ubuntu-unity",
        "Ubuntu Unity",
        "2024-09-04",
        "原文待补充：Ubuntu Unity",
        { b =>
            h2(b, "Ubuntu Unity")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://ubuntuunity.org/"), "阅读原文")
        }
    )
}
