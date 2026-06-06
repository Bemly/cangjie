package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBing2Post(): Post {
    return Post(
        "bing-2",
        "电脑模拟蓝牙鼠标 - 国内版 Bing",
        "2021-08-25",
        "搜索页面：电脑模拟蓝牙鼠标 - 国内版 Bing",
        { b =>
            h2(b, "电脑模拟蓝牙鼠标 - 国内版 Bing")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?q=%E7%94%B5%E8%84%91%E6%A8%A1%E6%8B%9F%E8%93%9D%E7%89%99%E9%BC%A0%E6%A0%87&pc=MOZB&form=MOZMBA"), "访问原始链接")
        }
    )
}
