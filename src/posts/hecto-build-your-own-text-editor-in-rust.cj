package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHectoBuildYourOwnTextEditorInRustPost(): Post {
    return Post(
        "hecto-build-your-own-text-editor-in-rust",
        "hecto: Build Your Own Text Editor in Rust",
        "[https://www.flenker.blog/hecto/](https://www.flenker.blog/hecto/)",
        "原文待补充：hecto: Build Your Own Text Editor in Rus",
        { b =>
            h2(b, "hecto: Build Your Own Text Editor in Rust")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "ph..."), "阅读原文")
        }
    )
}
