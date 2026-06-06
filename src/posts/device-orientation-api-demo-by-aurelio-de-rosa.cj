package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDeviceOrientationApiDemoByAurelioDeRosaPost(): Post {
    return Post(
        "device-orientation-api-demo-by-aurelio-de-rosa",
        "Device Orientation API Demo by Aurelio De Rosa",
        "2024-03-21",
        "网站主页：Device Orientation API Demo by Aurelio D",
        { b =>
            h2(b, "Device Orientation API Demo by Aurelio De Rosa")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.audero.it/demo/device-orientation-api-demo.html"), "访问原始链接")
        }
    )
}
