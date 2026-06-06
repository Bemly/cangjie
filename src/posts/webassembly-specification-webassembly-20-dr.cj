package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWebassemblySpecificationWebassembly20DrPost(): Post {
    return Post(
        "webassembly-specification-webassembly-20-dr",
        "WebAssembly Specification — WebAssembly 2.0 (Dr...",
        "2024-08-15",
        "原文待补充：WebAssembly Specification — WebAssembly ",
        { b =>
            h2(b, "WebAssembly Specification — WebAssembly 2.0 (Dr...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://webassembly.github.io/spec/core/"), "阅读原文")
        }
    )
}
