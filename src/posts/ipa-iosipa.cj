package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIpaIosipaPost(): Post {
    return Post(
        "ipa-iosipa",
        "砸壳ipa概览 · iOS逆向开发：砸壳ipa",
        "2024-11-24",
        "原文待补充：砸壳ipa概览 · iOS逆向开发：砸壳ipa",
        { b =>
            h2(b, "砸壳ipa概览 · iOS逆向开发：砸壳ipa")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://crifan.github.io/ios_re_crack_shell_ipa/website/crack_shell_overview/"), "阅读原文")
        }
    )
}
