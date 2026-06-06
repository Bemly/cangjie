package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getD1581PdfPost(): Post {
    return Post(
        "d-1581-pdf",
        "D-1581自检代码含义-精减.pdf",
        "2023-09-11",
        "API/文档文件：D-1581自检代码含义-精减.pdf",
        { b =>
            h2(b, "D-1581自检代码含义-精减.pdf")
            p(b, "此链接为 API 端点或文档文件，非博客文章。")
            a(b, attrs("href", "https://mi-d.cn/6/D-1581%E8%87%AA%E6%A3%80%E4%BB%A3%E7%A0%81%E5%90%AB%E4%B9%89-%E7%B2%BE%E5%87%8F.pdf"), "访问原始链接")
        }
    )
}
