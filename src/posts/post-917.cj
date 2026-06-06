package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost917Post(): Post {
    return Post(
        "post-917",
        "团员 自我剖析材料 - 搜索",
        "2025-03-04",
        "搜索页面：团员 自我剖析材料 - 搜索",
        { b =>
            h2(b, "团员 自我剖析材料 - 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?q=%E5%9B%A2%E5%91%98%20%E8%87%AA%E6%88%91%E5%89%96%E6%9E%90%E6%9D%90%E6%96%99&pc=MOZB&form=MOZMBA"), "访问原始链接")
        }
    )
}
