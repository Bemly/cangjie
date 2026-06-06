package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFiredragonLibrewolfForkGarudaCommunityPost(): Post {
    return Post(
        "firedragon-librewolf-fork-garuda-community",
        "FireDragon Librewolf fork 🐉 - Garuda Community ...",
        "2023-01-09",
        "原文待补充：FireDragon Librewolf fork 🐉 - Garuda Com",
        { b =>
            h2(b, "FireDragon Librewolf fork 🐉 - Garuda Community ...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://forum.garudalinux.org/t/firedragon-librewolf-fork/5018"), "阅读原文")
        }
    )
}
