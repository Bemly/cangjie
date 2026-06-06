package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOfficialPageForLanguageServerProtocolPost(): Post {
    return Post(
        "official-page-for-language-server-protocol",
        "Official page for Language Server Protocol",
        "2024-08-19",
        "原文待补充：Official page for Language Server Protoc",
        { b =>
            h2(b, "Official page for Language Server Protocol")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://microsoft.github.io/language-server-protocol/"), "阅读原文")
        }
    )
}
