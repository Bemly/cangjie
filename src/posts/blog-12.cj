package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog12Post(): Post {
    return Post(
        "blog-12",
        "安卓抓包——安卓7+导证书到系统目录_含笑-CSDN博客",
        "2021-05-26",
        "原文待补充：安卓抓包——安卓7+导证书到系统目录_含笑-CSDN博客",
        { b =>
            h2(b, "安卓抓包——安卓7+导证书到系统目录_含笑-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_39551311/article/details/115279589?utm_medium=distribute.wap_aggpage_search_result.none-task-blog-2~aggregatepage~first_rank_v2~rank_aggregation-1-115279589.wap_agg_rank_aggregation&utm_term=%E5%AE%89%E5%8D%93%E7%B3%BB%E7%BB%9F%E8%AF%81%E4%B9%A6%E7%9B%AE%E5%BD%95"), "阅读原文")
        }
    )
}
