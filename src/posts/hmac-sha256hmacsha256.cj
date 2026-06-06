package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHmacSha256hmacsha256Post(): Post {
    return Post(
        "hmac-sha256hmacsha256",
        "从零入门HMAC-SHA256_hmacsha256加密算法-CSDN博客",
        "2024-09-25",
        "原文待补充：从零入门HMAC-SHA256_hmacsha256加密算法-CSDN博客",
        { b =>
            h2(b, "从零入门HMAC-SHA256_hmacsha256加密算法-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/sdnyqfyqf/article/details/105534376"), "阅读原文")
        }
    )
}
