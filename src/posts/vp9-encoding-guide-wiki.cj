package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVp9EncodingGuideWikiPost(): Post {
    return Post(
        "vp9-encoding-guide-wiki",
        "VP9 Encoding Guide - wiki",
        "2024-08-12",
        "原文待补充：VP9 Encoding Guide - wiki",
        { b =>
            h2(b, "VP9 Encoding Guide - wiki")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://web.archive.org/web/20230725174849/http://wiki.webmproject.org/ffmpeg/vp9-encoding-guide"), "阅读原文")
        }
    )
}
