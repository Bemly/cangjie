package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPdfwordWordpdfPdfPost(): Post {
    return Post(
        "pdfword-wordpdf-pdf",
        "PDF转换成Word转换器在线 - 在线word转pdf转换器 - 金山PDF转换器在线版",
        "2021-08-24",
        "网站主页：PDF转换成Word转换器在线 - 在线word转pdf转换器 - 金山PDF转",
        { b =>
            h2(b, "PDF转换成Word转换器在线 - 在线word转pdf转换器 - 金山PDF转换器在线版")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://pdf.wps.cn/?from=search"), "访问原始链接")
        }
    )
}
