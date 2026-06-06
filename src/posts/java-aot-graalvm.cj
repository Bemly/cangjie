package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavaAotGraalvmPost(): Post {
    return Post(
        "java-aot-graalvm",
        "Java AOT 编译框架 GraalVM 快速入门 - 端小强的博客",
        "2025-02-11",
        "原文待补充：Java AOT 编译框架 GraalVM 快速入门 - 端小强的博客",
        { b =>
            h2(b, "Java AOT 编译框架 GraalVM 快速入门 - 端小强的博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://strongduanmu.com/blog/java-aot-compiler-framework-graalvm-quick-start.html"), "阅读原文")
        }
    )
}
