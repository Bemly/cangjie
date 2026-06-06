package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTediousjsnodeMssqlMicrosoftSqlServerCliePost(): Post {
    return Post(
        "tediousjsnode-mssql-microsoft-sql-server-clie",
        "tediousjs/node-mssql: Microsoft SQL Server clie...",
        "2024-08-17",
        "GitHub 仓库：tediousjs/node-mssql: Microsoft SQL Serv",
        { b =>
            h2(b, "tediousjs/node-mssql: Microsoft SQL Server clie...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/tediousjs/node-mssql"), "访问原始链接")
        }
    )
}
