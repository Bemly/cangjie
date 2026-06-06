package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFirefoxUserjsomnijaPost(): Post {
    return Post(
        "firefox-userjsomnija",
        "扫盲 Firefox 定制——从“user.js”到“omni.ja” @ 编程随想的博客",
        "2026-03-06",
        "原文待补充：扫盲 Firefox 定制——从“user.js”到“omni.ja” @ 编程",
        { b =>
            h2(b, "扫盲 Firefox 定制——从“user.js”到“omni.ja” @ 编程随想的博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://program-think.blogspot.com/2019/07/Customize-Firefox.html"), "阅读原文")
        }
    )
}
