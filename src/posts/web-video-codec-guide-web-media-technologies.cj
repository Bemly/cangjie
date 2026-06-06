package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWebVideoCodecGuideWebMediaTechnologiesPost(): Post {
    return Post(
        "web-video-codec-guide-web-media-technologies",
        "Web video codec guide - Web media technologies ...",
        "2024-08-10",
        "原文待补充：Web video codec guide - Web media techno",
        { b =>
            h2(b, "Web video codec guide - Web media technologies ...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://developer.mozilla.org/en-US/docs/Web/Media/Formats/Video_codecs#hevc_h.265"), "阅读原文")
        }
    )
}
