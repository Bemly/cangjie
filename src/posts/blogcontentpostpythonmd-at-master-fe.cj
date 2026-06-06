package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlogcontentpostpythonmdAtMasterFePost(): Post {
    return Post(
        "blogcontentpostpythonmd-at-master-fe",
        "blog/content/post/Python时间戳处理.md at master · fe...",
        "2025-01-31",
        "GitHub 文件：blog/content/post/Python时间戳处理.md at mast",
        { b =>
            h2(b, "blog/content/post/Python时间戳处理.md at master · fe...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/ferstar/blog/blob/master/content/post/Python%E6%97%B6%E9%97%B4%E6%88%B3%E5%A4%84%E7%90%86.md"), "访问原始链接")
        }
    )
}
