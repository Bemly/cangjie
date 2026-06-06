package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTwoyireadmecnmdAtMainTwoyitwoyiPost(): Post {
    return Post(
        "twoyireadmecnmd-at-main-twoyitwoyi",
        "twoyi/README_CN.md at main · twoyi/twoyi",
        "2022-07-20",
        "GitHub 文件：twoyi/README_CN.md at main · twoyi/twoyi",
        { b =>
            h2(b, "twoyi/README_CN.md at main · twoyi/twoyi")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/twoyi/twoyi/blob/main/README_CN.md"), "访问原始链接")
        }
    )
}
