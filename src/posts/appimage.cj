package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAppimagePost(): Post {
    return Post(
        "appimage",
        "AppImage",
        "[https://appimage.org/](https://appimage.org/)",
        "原文待补充：AppImage",
        { b =>
            h2(b, "AppImage")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "让 Linux 应用随处运行"), "阅读原文")
        }
    )
}
