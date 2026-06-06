package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSoundecStudioPost(): Post {
    return Post(
        "soundec-studio",
        "Soundec Studio",
        "[https://dev.soundec.com/soundecstudio/#%E7%A4%BA%E4%BE%8B...](https://dev.soundec.com/soundecstudio/#%E7%A4%BA%E4%BE%8B1-usb%E9%99%8D%E5%99%AA%E8%AF%9D%E5%8A%A1%E8%80%B3%E6%9C%BA)",
        "原文待补充：Soundec Studio",
        { b =>
            h2(b, "Soundec Studio")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "九音开发者"), "阅读原文")
        }
    )
}
