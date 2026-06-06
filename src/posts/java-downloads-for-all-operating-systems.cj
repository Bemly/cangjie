package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavaDownloadsForAllOperatingSystemsPost(): Post {
    return Post(
        "java-downloads-for-all-operating-systems",
        "Java Downloads for All Operating Systems",
        "2024-07-27",
        "原文待补充：Java Downloads for All Operating Systems",
        { b =>
            h2(b, "Java Downloads for All Operating Systems")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.java.com/en/download/manual.jsp"), "阅读原文")
        }
    )
}
