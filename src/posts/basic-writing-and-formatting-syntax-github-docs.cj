package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBasicWritingAndFormattingSyntaxGithubDocsPost(): Post {
    return Post(
        "basic-writing-and-formatting-syntax-github-docs",
        "Basic writing and formatting syntax - GitHub Docs",
        "2024-09-11",
        "GitHub 文件：Basic writing and formatting syntax - Gi",
        { b =>
            h2(b, "Basic writing and formatting syntax - GitHub Docs")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#specifying-the-theme-an-image-is-shown-to"), "访问原始链接")
        }
    )
}
