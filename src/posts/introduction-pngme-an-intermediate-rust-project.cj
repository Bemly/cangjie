package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIntroductionPngmeAnIntermediateRustProjectPost(): Post {
    return Post(
        "introduction-pngme-an-intermediate-rust-project",
        "Introduction - PNGme: An Intermediate Rust Project",
        "2024-07-02",
        "PNGme - 在 PNG 文件中隐藏秘密消息的 Rust 中级项目",
        { b =>
            h2(b, "PNGme: An Intermediate Rust Project")
            p(b, "PNGme 是一个专为刚读完《Rust 程序设计语言》的开发者设计的中级实践项目。它填补了高度指导的初学者教程和自主开发项目之间的空白，主要目标是让你写代码，次要目标是让你学会阅读文档。")
            p(b, "项目要求你构建一个命令行程序，可以在 PNG 文件中隐藏秘密消息。程序需要实现四个命令：将消息编码到 PNG 文件中、解码 PNG 文件中存储的消息、从 PNG 文件中删除消息、打印可搜索消息的 PNG 块列表。")
            h2(b, "教学方法")
            p(b, "与其他教程不同，PNGme 不会提供完整的代码实现。如果需要额外帮助，每个章节都有提示和代码框架可以起步。前三章提供了全面的单元测试来确保代码功能正确。")
            p(b, "这是你自己的项目，你可以根据自己的学习风格自由决定使用多少材料。教程会提供所有实现所需资源的文档链接，但需要你自己研究如何使用。")
            h2(b, "项目结构")
            p(b, "项目分为多个章节：Chunk Types（块类型）、Chunks（块）、PNG Files（PNG 文件）、Command Line Arguments（命令行参数）、使用代码生成更多代码，以及后续步骤。每个章节都有对应的提示页面。")
            p(b, "PNG 规范中需要处理的部分其实非常简单，不需要实现任何图像解码功能。即使你觉得这超出了你的能力范围，这个教程也非常适合你。")
            a(b, attrs("href", "https://jrdngr.github.io/pngme_book/"), "访问 PNGme 教程")
        }
    )
}
