package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCroutonAndChromebrewOnChromebookPost(): Post {
    return Post(
        "crouton-and-chromebrew-on-chromebook",
        "Crouton and Chromebrew on Chromebook",
        "2023-08-10",
        "原文待补充：Crouton and Chromebrew on Chromebook",
        { b =>
            h2(b, "Crouton and Chromebrew on Chromebook")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://nosarthur.github.io/coding/2018/07/16/crouton.html"), "阅读原文")
        }
    )
}
