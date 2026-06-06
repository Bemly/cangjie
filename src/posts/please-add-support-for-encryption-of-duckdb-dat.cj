package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPleaseAddSupportForEncryptionOfDuckdbDatPost(): Post {
    return Post(
        "please-add-support-for-encryption-of-duckdb-dat",
        "Please add support for encryption of DuckDB dat...",
        "2024-08-17",
        "GitHub 文件：Please add support for encryption of Duc",
        { b =>
            h2(b, "Please add support for encryption of DuckDB dat...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/duckdb/duckdb/discussions/4512"), "访问原始链接")
        }
    )
}
