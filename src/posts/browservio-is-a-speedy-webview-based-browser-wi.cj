package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBrowservioIsASpeedyWebviewBasedBrowserWiPost(): Post {
    return Post(
        "browservio-is-a-speedy-webview-based-browser-wi",
        "Browservio is a speedy WebView-based browser wi...",
        "2023-02-08",
        "原文待补充：Browservio is a speedy WebView-based bro",
        { b =>
            h2(b, "Browservio is a speedy WebView-based browser wi...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.xda-developers.com/browservio-webview-browser/"), "阅读原文")
        }
    )
}
