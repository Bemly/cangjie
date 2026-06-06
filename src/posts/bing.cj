package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBingPost(): Post {
    return Post(
        "bing",
        "鬼刀 - 国内版 Bing",
        "2021-09-09",
        "搜索页面：鬼刀 - 国内版 Bing",
        { b =>
            h2(b, "鬼刀 - 国内版 Bing")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?q=%E9%AC%BC%E5%88%80&pc=MOZB&form=MOZMBA"), "访问原始链接")
        }
    )
}
