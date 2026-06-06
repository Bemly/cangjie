package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost525Post(): Post {
    return Post(
        "post-525",
        "开源鸿蒙方舟编译器前端工具"方舟 JS 运行时"正式开源",
        "2024-01-19",
        "介绍OpenHarmony方舟编译器前端工具"方舟JS运行时"正式开源，包含ARK Runtime、ts2abc等核心组件。",
        { b =>
            h2(b, "开源鸿蒙方舟编译器前端工具"方舟 JS 运行时"正式开源")
            p(b, "方舟 JS 运行时（ARK Runtime）是 OpenHarmony 上 JS 应用使用的运行时。包含 JS 对象的分配器以及垃圾回收器（GC）、符合 ECMAScript 规范的标准库、用于运行 ARK 前端组件生成的方舟字节码（ARK Bytecode，abc）的解释器、用于存储隐藏类的内联缓存、方舟 JS 运行时对外的函数接口（AFFI）等模块。")
            h3(b, "方舟JS运行时组件")
            p(b, "方舟 JS 运行时是整个 JS 执行引擎的核心，负责管理 JavaScript 对象的内存分配与回收。垃圾回收器（GC）采用分代回收策略，有效管理内存。标准库实现了 ECMAScript 规范中定义的内置对象和函数，如 Array、Object、Promise 等。")
            p(b, "方舟字节码解释器负责执行 ARK 前端组件生成的字节码。内联缓存技术用于优化隐藏类的访问性能，提升对象属性访问速度。对外函数接口（AFFI）则提供了运行时与外部系统交互的能力。")
            h3(b, "ts2abc组件")
            p(b, "ts2abc 组件是方舟平台的前端工具，其作为方舟编译器中 JavaScript 语言的前端工具，支持将 JavaScript 文件转换为方舟字节码文件。这是将源代码转换为可执行格式的关键环节。")
            h3(b, "方舟公共组件")
            p(b, "Runtime 组件是方舟运行时的公共组件，主要包括一些语言无关的基础运行库。包含承载字节码以及执行字节码所需要相关信息的 ARK File、支持 Debugger 的 Tooling、负责对应系统调用的 ARK Base 等。")
            h3(b, "OpenHarmony与方舟编译器")
            p(b, "OpenHarmony 是由开放原子开源基金会（OpenAtom Foundation）孵化及运营的开源项目，目标是面向全场景、全连接、全智能时代，搭建一个智能终端设备操作系统的框架和平台。")
            p(b, "方舟编译器（OpenArkCompiler）是为支持多种编程语言、多种芯片平台的联合编译、运行而设计的统一编程平台，包含编译器、工具链、运行时等关键部件。此次开源标志着 OpenHarmony 生态在 JS 运行时层面迈出了重要一步。")
            a(b, attrs("href", "https://www.bway.cn/kai-yuan-hong-meng-fang-zhou-bian-yi-qi-qian-duan-gong-ju-fang-zhou-JSyun-xing-shi-zheng-shi-kai-yuan-211.html"), "阅读原文")
        }
    )
}
