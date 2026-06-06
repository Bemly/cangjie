package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWhatevergreenmanualfaqchartmdAtMasterAPost(): Post {
    return Post(
        "whatevergreenmanualfaqchartmd-at-master-a",
        "WhateverGreen/Manual/FAQ.Chart.md at master · a...",
        "2024-02-18",
        "GitHub 文件：WhateverGreen/Manual/FAQ.Chart.md at mas",
        { b =>
            h2(b, "WhateverGreen/Manual/FAQ.Chart.md at master · a...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.Chart.md"), "访问原始链接")
        }
    )
}
