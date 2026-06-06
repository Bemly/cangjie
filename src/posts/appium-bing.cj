package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAppiumBingPost(): Post {
    return Post(
        "appium-bing",
        "Appium - 国内版 Bing",
        "2021-08-28",
        "搜索页面：Appium - 国内版 Bing",
        { b =>
            h2(b, "Appium - 国内版 Bing")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?form=MOZLBR&pc=MOZI&q=Appium"), "访问原始链接")
        }
    )
}
