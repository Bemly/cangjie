package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBuildYourTextEditorWithRustPost(): Post {
    return Post(
        "build-your-text-editor-with-rust",
        "Build Your Text Editor With Rust!",
        "2024-07-01",
        "Kofi Otuo 的 Rust 文本编辑器构建教程 - Pound 编辑器",
        { b =>
            h2(b, "Build Your Text Editor With Rust!")
            p(b, "这是 Kofi Otuo 撰写的 Rust 文本编辑器构建教程，发布在 Medium 上。教程面向编程新手或 Rust 初学者，教你如何从零开始构建一个名为 Pound 的文本编辑器。")
            p(b, "整个编辑器不到 1000 行代码，实现了所有基本的编辑器功能，包括语法高亮和搜索功能。该教程基于 C 语言版本的 kilo 编辑器教程改编。")
            h2(b, "教程结构")
            p(b, "教程分为 7 个部分：设置环境、读取按键进入原始模式、在屏幕上绘制和移动光标、显示文本文件使其成为文本查看器、编辑和保存文件、实现搜索功能、添加语法高亮。")
            h2(b, "环境设置")
            p(b, "教程首先指导读者安装 Rust 并创建 Cargo 项目。使用 cargo new pound 命令创建项目后，Cargo 会生成 Cargo.toml 文件和 src/main.rs 文件。")
            p(b, "项目依赖 crossterm crate，这是一个用于与终端交互的库，因为文本编辑器需要直接与终端进行交互。")
            h2(b, "编译运行")
            p(b, "使用 cargo run 命令可以编译并运行程序。开发时使用 debug 版本，生产环境使用 cargo run --release 命令生成优化后的 release 版本。")
            a(b, attrs("href", "https://medium.com/@otukof/build-your-text-editor-with-rust-678a463f968b"), "阅读原文")
        }
    )
}
