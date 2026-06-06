package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCorsJsonpGithubPost(): Post {
    return Post(
        "cors-jsonp-github",
        "使用 CORS 与 JSONP 发出跨源请求 - GitHub 文档",
        "2024-02-03",
        "GitHub 文件：使用 CORS 与 JSONP 发出跨源请求 - GitHub 文档",
        { b =>
            h2(b, "使用 CORS 与 JSONP 发出跨源请求 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/rest/using-the-rest-api/using-cors-and-jsonp-to-make-cross-origin-requests?apiVersion=2022-11-28"), "访问原始链接")
        }
    )
}
