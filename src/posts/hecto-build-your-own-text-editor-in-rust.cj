package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHectoBuildYourOwnTextEditorInRustPost(): Post {
    return Post(
        "hecto-build-your-own-text-editor-in-rust",
        "hecto: Build Your Own Text Editor in Rust",
        "2024-07-01",
        "使用 Rust 从零构建文本编辑器的系列教程",
        { b =>
            h2(b, "hecto: Build Your Own Text Editor in Rust")
            p(b, "hecto 是一个系列博客教程，教你如何使用 Rust 从零开始构建一个文本编辑器。它是 antirez 的 kilo 编辑器的 Rust 重实现，也是 Paige Ruten 的 C 语言教程的改编版。")
            p(b, "整个编辑器大约 3000 行 Rust 代码，分布在几个文件中，使用少量依赖。它实现了所有基本的编辑器功能，包括语法高亮和搜索功能。")
            h2(b, "教程结构")
            p(b, "教程分为多个小步骤进行。在最初的步骤中，你会添加、修改或删除几行代码，大多数步骤之后都可以立即编译并运行程序来观察变化。")
            p(b, "教程包含以下章节：设置、进入原始模式、原始输入输出、文本查看器、文本编辑器、搜索功能和语法高亮。")
            h2(b, "适用人群")
            p(b, "作者从工程领域的不同角度出发编写了这个教程，目的是深入理解 Rust。如果你处于类似情况，这个教程非常适合你。如果你已经了解 Rust，但想知道文本编辑器的内部工作原理，这个教程同样适合你。")
            p(b, "教程中的每一步都有详细解释，有时非常详细，而且不总是与 Rust 相关。你可以自由浏览或跳过说明文字，因为教程的核心是让你在学习 Rust 的同时从零构建一个文本编辑器。")
            a(b, attrs("href", "https://www.flenker.blog/hecto/"), "访问 hecto 教程")
        }
    )
}
