package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog853Post(): Post {
    return Post(
        "blog-853",
        "保护好你的小鸡！保姆级服务器安全教程！-我不是咕咕鸽",
        "2024-10-25",
        "原文待补充：保护好你的小鸡！保姆级服务器安全教程！-我不是咕咕鸽",
        { b =>
            h2(b, "保护好你的小鸡！保姆级服务器安全教程！-我不是咕咕鸽")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.laoda.de/archives/how-to-secure-a-linux-server"), "阅读原文")
        }
    )
}
