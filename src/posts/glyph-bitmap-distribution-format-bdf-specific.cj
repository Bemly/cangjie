package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGlyphBitmapDistributionFormatBdfSpecificPost(): Post {
    return Post(
        "glyph-bitmap-distribution-format-bdf-specific",
        "Glyph Bitmap Distribution Format (BDF) Specific...",
        "2024-08-13",
        "API/文档文件：Glyph Bitmap Distribution Format (BDF) S",
        { b =>
            h2(b, "Glyph Bitmap Distribution Format (BDF) Specific...")
            p(b, "此链接为 API 端点或文档文件，非博客文章。")
            a(b, attrs("href", "https://adobe-type-tools.github.io/font-tech-notes/pdfs/5005.BDF_Spec.pdf"), "访问原始链接")
        }
    )
}
