package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHexeditJavascriptPost(): Post {
    return Post(
        "hexedit-javascript",
        "HexEd.it : 免费的基于JavaScript的十六进制编辑器",
        "2026-04-09",
        "原文待补充：HexEd.it : 免费的基于JavaScript的十六进制编辑器",
        { b =>
            h2(b, "HexEd.it : 免费的基于JavaScript的十六进制编辑器")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://hexed.it/"), "阅读原文")
        }
    )
}
