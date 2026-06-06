package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP8markdownPost(): Post {
    return Post(
        "8-markdown",
        "8 个优秀的开源 Markdown 编辑器",
        "2024-02-04",
        "GitHub 文件：8 个优秀的开源 Markdown 编辑器",
        { b =>
            h2(b, "8 个优秀的开源 Markdown 编辑器")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://gist.github.com/baymaxium/c1e832151089092e3aa2fe1075db1f5e"), "访问原始链接")
        }
    )
}
