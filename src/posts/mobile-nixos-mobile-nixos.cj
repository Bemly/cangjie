package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMobileNixosMobileNixosPost(): Post {
    return Post(
        "mobile-nixos-mobile-nixos",
        "Mobile NixOS — Mobile NixOS",
        "2024-12-25",
        "原文待补充：Mobile NixOS — Mobile NixOS",
        { b =>
            h2(b, "Mobile NixOS — Mobile NixOS")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mobile-nixos.github.io/mobile-nixos/"), "阅读原文")
        }
    )
}
