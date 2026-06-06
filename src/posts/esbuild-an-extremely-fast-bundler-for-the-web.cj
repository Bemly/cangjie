package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEsbuildAnExtremelyFastBundlerForTheWebPost(): Post {
    return Post(
        "esbuild-an-extremely-fast-bundler-for-the-web",
        "esbuild - An extremely fast bundler for the web",
        "2024-08-21",
        "原文待补充：esbuild - An extremely fast bundler for ",
        { b =>
            h2(b, "esbuild - An extremely fast bundler for the web")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://esbuild.github.io/"), "阅读原文")
        }
    )
}
