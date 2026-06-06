package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getConvertCurlCommandsToPythonPost(): Post {
    return Post(
        "convert-curl-commands-to-python",
        "Convert curl commands to Python",
        "2026-03-06",
        "原文待补充：Convert curl commands to Python",
        { b =>
            h2(b, "Convert curl commands to Python")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://curlconverter.com/python/"), "阅读原文")
        }
    )
}
