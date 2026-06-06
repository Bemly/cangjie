package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOauth20oauth2SecretPost(): Post {
    return Post(
        "oauth20oauth2-secret",
        "从前端安全出发理解OAuth2.0_oauth2 secret 放在前端-CSDN博客",
        "2024-02-03",
        "原文待补充：从前端安全出发理解OAuth2.0_oauth2 secret 放在前端-CSD",
        { b =>
            h2(b, "从前端安全出发理解OAuth2.0_oauth2 secret 放在前端-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/dzqxwzoe/article/details/128838814"), "阅读原文")
        }
    )
}
