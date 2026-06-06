package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIosipaPost(): Post {
    return Post(
        "iosipa",
        "前言 · iOS逆向开发：砸壳ipa",
        "2024-11-24",
        "原文待补充：前言 · iOS逆向开发：砸壳ipa",
        { b =>
            h2(b, "前言 · iOS逆向开发：砸壳ipa")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://crifan.github.io/ios_re_crack_shell_ipa/website/"), "阅读原文")
        }
    )
}
