package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGimpsvgPost(): Post {
    return Post(
        "gimpsvg",
        "在GIMP中将图像导出为SVG-腾讯云开发者社区-腾讯云",
        "2024-10-03",
        "原文待补充：在GIMP中将图像导出为SVG-腾讯云开发者社区-腾讯云",
        { b =>
            h2(b, "在GIMP中将图像导出为SVG-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/ask/sof/116919108"), "阅读原文")
        }
    )
}
