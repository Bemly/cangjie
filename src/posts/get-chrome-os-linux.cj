package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGetChromeOsLinuxPost(): Post {
    return Post(
        "get-chrome-os-linux",
        "Get Chrome OS Linux",
        "2023-08-08",
        "原文待补充：Get Chrome OS Linux",
        { b =>
            h2(b, "Get Chrome OS Linux")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://getchrome.eu/"), "阅读原文")
        }
    )
}
