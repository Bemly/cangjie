package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHomeBedrockLauncherPost(): Post {
    return Post(
        "home-bedrock-launcher",
        "Home - Bedrock Launcher",
        "2025-02-11",
        "原文待补充：Home - Bedrock Launcher",
        { b =>
            h2(b, "Home - Bedrock Launcher")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://bedrocklauncher.github.io/"), "阅读原文")
        }
    )
}
