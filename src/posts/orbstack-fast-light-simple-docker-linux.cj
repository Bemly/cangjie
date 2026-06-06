package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOrbstackFastLightSimpleDockerLinuxPost(): Post {
    return Post(
        "orbstack-fast-light-simple-docker-linux",
        "OrbStack · Fast, light, simple Docker & Linux",
        "2024-11-20",
        "原文待补充：OrbStack · Fast, light, simple Docker & ",
        { b =>
            h2(b, "OrbStack · Fast, light, simple Docker & Linux")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://orbstack.dev/?utm_source=appinn.com"), "阅读原文")
        }
    )
}
