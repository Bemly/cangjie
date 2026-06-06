package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCn107360275apdfPost(): Post {
    return Post(
        "cn107360275apdf",
        "CN107360275A.pdf",
        "2024-01-14",
        "API/文档文件：CN107360275A.pdf",
        { b =>
            h2(b, "CN107360275A.pdf")
            p(b, "此链接为 API 端点或文档文件，非博客文章。")
            a(b, attrs("href", "https://patentimages.storage.googleapis.com/c6/36/0f/5b051e19026686/CN107360275A.pdf"), "访问原始链接")
        }
    )
}
