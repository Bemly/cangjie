package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getChaitinWafPost(): Post {
    return Post(
        "chaitin-waf",
        "chaitin-waf",
        "[https://apisix.apache.org/zh/docs/apisix/plugins/chaitin-...](https://apisix.apache.org/zh/docs/apisix/plugins/chaitin-waf/)",
        "原文待补充：chaitin-waf",
        { b =>
            h2(b, "chaitin-waf")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Apache APISIX® -- Cloud-Native A..."), "阅读原文")
        }
    )
}
