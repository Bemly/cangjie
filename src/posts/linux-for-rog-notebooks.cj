package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxForRogNotebooksPost(): Post {
    return Post(
        "linux-for-rog-notebooks",
        "Linux for ROG Notebooks",
        "2024-08-29",
        "原文待补充：Linux for ROG Notebooks",
        { b =>
            h2(b, "Linux for ROG Notebooks")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://asus-linux.org/"), "阅读原文")
        }
    )
}
