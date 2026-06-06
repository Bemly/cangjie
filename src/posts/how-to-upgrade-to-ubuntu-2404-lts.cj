package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowToUpgradeToUbuntu2404LtsPost(): Post {
    return Post(
        "how-to-upgrade-to-ubuntu-2404-lts",
        "How to Upgrade to Ubuntu 24.04 LTS",
        "2024-09-26",
        "原文待补充：How to Upgrade to Ubuntu 24.04 LTS",
        { b =>
            h2(b, "How to Upgrade to Ubuntu 24.04 LTS")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://itsfoss.com/upgrade-ubuntu-version/"), "阅读原文")
        }
    )
}
