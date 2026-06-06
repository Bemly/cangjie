package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxRunPost(): Post {
    return Post(
        "linux-run",
        "Linux Run 文件制作、使用介绍-谢先斌的博客",
        "2024-08-11",
        "原文待补充：Linux Run 文件制作、使用介绍-谢先斌的博客",
        { b =>
            h2(b, "Linux Run 文件制作、使用介绍-谢先斌的博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.xiexianbin.cn/linux/shell/how-to-make-linux-run-file/index.html"), "阅读原文")
        }
    )
}
