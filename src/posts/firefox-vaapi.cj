package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFirefoxVaapiPost(): Post {
    return Post(
        "firefox-vaapi",
        "Firefox 使用 VAAPI 硬解视频",
        "[https://blog.zhaozuohong.vip/2022/11/16/firefox-vaapi/](https://blog.zhaozuohong.vip/2022/11/16/firefox-vaapi/)",
        "原文待补充：Firefox 使用 VAAPI 硬解视频",
        { b =>
            h2(b, "Firefox 使用 VAAPI 硬解视频")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "zhao's Blog"), "阅读原文")
        }
    )
}
