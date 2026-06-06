package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxBingPost(): Post {
    return Post(
        "linux-bing",
        "linux 风扇 - 国内版 Bing",
        "2021-08-31",
        "搜索页面：linux 风扇 - 国内版 Bing",
        { b =>
            h2(b, "linux 风扇 - 国内版 Bing")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?q=linux%20%E9%A3%8E%E6%89%87&pc=MOZB&form=MOZMBA"), "访问原始链接")
        }
    )
}
