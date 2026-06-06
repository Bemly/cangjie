package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPracticersRustByPracticeRustPost(): Post {
    return Post(
        "practicers-rust-by-practice-rust",
        "关于 practice.rs - Rust By Practice( Rust 练习实践 )",
        "2024-07-01",
        "Rust语言实战 - 通过实战练习提升 Rust 水平的学习平台",
        { b =>
            h2(b, "Rust By Practice - Rust语言实战")
            p(b, "Rust By Practice（Rust语言实战）是一个通过有挑战性的示例、练习题和实践项目来提升 Rust 水平的在线学习平台。它的目标是从入门学习到上手实战建立直通桥梁。")
            p(b, "该项目由 Rust 编程学院打造，提供了大量高质量的实战练习题，支持在线阅读、修改和编译。每道练习题都提供了解答，整体难度更加贴近实战。")
            h2(b, "内容覆盖范围")
            p(b, "平台覆盖了 Rust 语言的几乎所有方面：基础语言特性、高级语言特性、async/await 异步编程、多线程、并发原语、性能优化、工具链使用、标准库、数据结构和算法等。")
            p(b, "每个章节分为三个可选部分：示例、练习和实践项目。难度分为四个等级：简单、中等、困难和地狱级别。")
            h2(b, "技术实现")
            p(b, "平台使用 mdbook 构建，支持在线阅读和本地运行。用户可以通过克隆 GitHub 仓库并使用 mdbook serve 命令在本地启动服务。")
            p(b, "该项目还配套了一本开源 Rust 书籍《Rust语言圣经》，适合从入门到精通所有阶段的学习。")
            a(b, attrs("href", "https://practice-zh.course.rs/why-exercise.html"), "访问 Rust By Practice")
        }
    )
}
