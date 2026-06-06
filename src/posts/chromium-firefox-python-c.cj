package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getChromiumFirefoxPythonCPost(): Post {
    return Post(
        "chromium-firefox-python-c",
        "为什么我们最终抛弃 Chromium 选择了 Firefox ？_Python大本营的博客-C...",
        "2021-08-13",
        "原文待补充：为什么我们最终抛弃 Chromium 选择了 Firefox ？_Python大",
        { b =>
            h2(b, "为什么我们最终抛弃 Chromium 选择了 Firefox ？_Python大本营的博客-C...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_42232219/article/details/103740453"), "阅读原文")
        }
    )
}
