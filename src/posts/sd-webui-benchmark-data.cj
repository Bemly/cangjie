package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSdWebuiBenchmarkDataPost(): Post {
    return Post(
        "sd-webui-benchmark-data",
        "SD WebUI Benchmark Data",
        "2023-11-23",
        "原文待补充：SD WebUI Benchmark Data",
        { b =>
            h2(b, "SD WebUI Benchmark Data")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://vladmandic.github.io/sd-extension-system-info/pages/benchmark.html"), "阅读原文")
        }
    )
}
