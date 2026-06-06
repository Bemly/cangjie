package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVisualStudioCodeVscodeMoxPost(): Post {
    return Post(
        "visual-studio-code-vscode-mox",
        "Visual Studio Code (VSCode) 常见问题：国内无法下载/下载慢_mox...",
        "2021-05-26",
        "原文待补充：Visual Studio Code (VSCode) 常见问题：国内无法下载/",
        { b =>
            h2(b, "Visual Studio Code (VSCode) 常见问题：国内无法下载/下载慢_mox...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/moxiaoxuanyu/article/details/113185863"), "阅读原文")
        }
    )
}
