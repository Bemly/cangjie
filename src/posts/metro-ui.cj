package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMetroUiPost(): Post {
    return Post(
        "metro-ui",
        "metro ui - 百度",
        "2021-01-17",
        "搜索页面：metro ui - 百度",
        { b =>
            h2(b, "metro ui - 百度")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://m.baidu.com/from=1001192y/ssid=0/s?pn=10&usm=10&word=metro%20ui&rsv_pq=10803094205970568923&rsv_t=1c3abyXQEbpvTB5Yg4Qln7Z9EqRR9mNN56IedMbxzQepNHA3DNcRVtvhe8B4erE&sa=np&rqid=10803094205970568923&params_ssrt=node-san&adid=95ec4cf16df4d6db"), "访问原始链接")
        }
    )
}
