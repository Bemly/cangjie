package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCutefishosCutefishOsBuiltOnUbuntuPost(): Post {
    return Post(
        "cutefishos-cutefish-os-built-on-ubuntu",
        "CutefishOS – Cutefish OS Built on Ubuntu",
        "2022-08-01",
        "原文待补充：CutefishOS – Cutefish OS Built on Ubuntu",
        { b =>
            h2(b, "CutefishOS – Cutefish OS Built on Ubuntu")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cutefish-ubuntu.github.io/download/"), "阅读原文")
        }
    )
}
