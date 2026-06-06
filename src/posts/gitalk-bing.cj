package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGitalkBingPost(): Post {
    return Post(
        "gitalk-bing",
        "gitalk - 国内版 Bing",
        "2021-10-18",
        "搜索页面：gitalk - 国内版 Bing",
        { b =>
            h2(b, "gitalk - 国内版 Bing")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?q=gitalk&pc=MOZB&form=MOZMBA"), "访问原始链接")
        }
    )
}
