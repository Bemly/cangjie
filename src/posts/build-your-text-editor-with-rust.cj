package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBuildYourTextEditorWithRustPost(): Post {
    return Post(
        "build-your-text-editor-with-rust",
        "Build Your Text Editor With Rust!",
        "[https://medium.com/@otukof/build-your-text-editor-with-ru...](https://medium.com/@otukof/build-your-text-editor-with-rust-678a463f968b)",
        "原文待补充：Build Your Text Editor With Rust!",
        { b =>
            h2(b, "Build Your Text Editor With Rust!")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "by Kofi Ot..."), "阅读原文")
        }
    )
}
