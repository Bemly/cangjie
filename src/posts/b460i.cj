package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB460iPost(): Post {
    return Post(
        "b460i",
        "B460i黑苹果小钢炮装机记",
        "2024-02-18",
        "原文待补充：B460i黑苹果小钢炮装机记",
        { b =>
            h2(b, "B460i黑苹果小钢炮装机记")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1684852296891718030&wfr=spider&for=pc&searchword=%E4%B8%83%E5%BD%A9%E8%99%B9b460i%E8%83%BD%E4%B8%8Ai7%E5%90%97"), "阅读原文")
        }
    )
}
