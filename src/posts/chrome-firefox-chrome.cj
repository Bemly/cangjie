package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getChromeFirefoxChromePost(): Post {
    return Post(
        "chrome-firefox-chrome",
        "编程随想的博客: 弃用 Chrome 改用 Firefox 的几点理由——关于 Chrome ...",
        "2021-08-17",
        "原文待补充：编程随想的博客: 弃用 Chrome 改用 Firefox 的几点理由——关于 ",
        { b =>
            h2(b, "编程随想的博客: 弃用 Chrome 改用 Firefox 的几点理由——关于 Chrome ...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://program-think.blogspot.com/2018/09/Why-You-Should-Switch-from-Chrome-to-Firefox.html?m=1"), "阅读原文")
        }
    )
}
