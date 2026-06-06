package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAutojsPost(): Post {
    return Post(
        "autojs",
        "autojs之内存泄露_牙叔教程的博客-CSDN博客_autojs内存泄露",
        "2022-07-20",
        "原文待补充：autojs之内存泄露_牙叔教程的博客-CSDN博客_autojs内存泄露",
        { b =>
            h2(b, "autojs之内存泄露_牙叔教程的博客-CSDN博客_autojs内存泄露")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/snailuncle2/article/details/115187126?utm_medium=distribute.wap_aggpage_search_result.none-task-blog-2~aggregatepage~first_rank_ecpm_v1~rank_v31_ecpm-1-115187126-null-null.wap_agg_so&utm_term=autojs%E6%89%BE%E5%9B%BE%E9%87%8A%E6%94%BE%E5%86%85%E5%AD%98"), "阅读原文")
        }
    )
}
