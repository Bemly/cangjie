package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost251Post(): Post {
    return Post(
        "post-251",
        "国家不认可的六大证书 - 百度",
        "2023-09-25",
        "搜索页面：国家不认可的六大证书 - 百度",
        { b =>
            h2(b, "国家不认可的六大证书 - 百度")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://m.baidu.com/from=844b/ssid=0/s?word=%E5%9B%BD%E5%AE%B6%E4%B8%8D%E8%AE%A4%E5%8F%AF%E7%9A%84%E5%85%AD%E5%A4%A7%E8%AF%81%E4%B9%A6&sa=re_dl_prs_34689_2&ms=1&rqid=11364578999744099768&params_ssrt=node-san&rq=pmp%E5%A4%9A%E5%B0%91%E9%92%B1&rsf=103634000&asctag=51466"), "访问原始链接")
        }
    )
}
