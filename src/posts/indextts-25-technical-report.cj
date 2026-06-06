package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIndextts25TechnicalReportPost(): Post {
    return Post(
        "indextts-25-technical-report",
        "IndexTTS 2.5 Technical Report",
        "2026-02-28",
        "原文待补充：IndexTTS 2.5 Technical Report",
        { b =>
            h2(b, "IndexTTS 2.5 Technical Report")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://index-tts.github.io/index-tts2-5.github.io/"), "阅读原文")
        }
    )
}
