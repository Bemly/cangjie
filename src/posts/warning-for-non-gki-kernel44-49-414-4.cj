package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWarningForNonGkiKernel44494144Post(): Post {
    return Post(
        "warning-for-non-gki-kernel44-49-414-4",
        "[Warning] For non-GKI kernel(4.4, 4.9, 4.14, 4....",
        "2024-10-04",
        "GitHub Issue：[Warning] For non-GKI kernel(4.4, 4.9, 4",
        { b =>
            h2(b, "[Warning] For non-GKI kernel(4.4, 4.9, 4.14, 4....")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/tiann/KernelSU/issues/943"), "访问原始链接")
        }
    )
}
