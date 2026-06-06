package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getV2rayareadmezhmdAtFeatv5V2rayav2rayaPost(): Post {
    return Post(
        "v2rayareadmezhmd-at-featv5-v2rayav2raya",
        "v2rayA/README_zh.md at feat_v5 · v2rayA/v2rayA",
        "2023-03-26",
        "GitHub 文件：v2rayA/README_zh.md at feat_v5 · v2rayA/",
        { b =>
            h2(b, "v2rayA/README_zh.md at feat_v5 · v2rayA/v2rayA")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/v2rayA/v2rayA/blob/feat_v5/README_zh.md"), "访问原始链接")
        }
    )
}
