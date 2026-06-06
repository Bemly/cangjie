package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBrx86bilibiliPicpoolBPost(): Post {
    return Post(
        "brx86bilibili-picpool-b",
        "Brx86/bilibili-picpool: 白嫖B站当图床",
        "2021-11-18",
        "GitHub 仓库：Brx86/bilibili-picpool: 白嫖B站当图床",
        { b =>
            h2(b, "Brx86/bilibili-picpool: 白嫖B站当图床")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/Brx86/bilibili-picpool"), "访问原始链接")
        }
    )
}
