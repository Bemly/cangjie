package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlogmdAtMasterXuweningblogPost(): Post {
    return Post(
        "blogmd-at-master-xuweningblog",
        "blog/网络抓包原理及常用抓包工具.md at master · xuwening/blog...",
        "2023-05-31",
        "GitHub 文件：blog/网络抓包原理及常用抓包工具.md at master · xuweni",
        { b =>
            h2(b, "blog/网络抓包原理及常用抓包工具.md at master · xuwening/blog...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/xuwening/blog/blob/master/mdFile/%E7%BD%91%E7%BB%9C%E6%8A%93%E5%8C%85%E5%8E%9F%E7%90%86%E5%8F%8A%E5%B8%B8%E7%94%A8%E6%8A%93%E5%8C%85%E5%B7%A5%E5%85%B7.md"), "访问原始链接")
        }
    )
}
