package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP1panelwaflongjuansblogcoPost(): Post {
    return Post(
        "1panelwaf-longjuans-blog-co",
        "1Panel旁路接入雷池WAF（非反向代理套娃）-longjuan's Blog - 龙卷co...",
        "2024-09-23",
        "网站主页：1Panel旁路接入雷池WAF（非反向代理套娃）-longjuan's Blog",
        { b =>
            h2(b, "1Panel旁路接入雷池WAF（非反向代理套娃）-longjuan's Blog - 龙卷co...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.zway.top/archives/1panel-jie-ru-lei-chi-waf-fei-fan-xiang-dai-li"), "访问原始链接")
        }
    )
}
