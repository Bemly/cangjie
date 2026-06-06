package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDejavusBlogCgitGitPost(): Post {
    return Post(
        "dejavus-blog-cgit-git",
        "Dejavu's Blog - 使用 cgit 托管小小的也很可爱的 Git 服务器",
        "2023-05-11",
        "原文待补充：Dejavu's Blog - 使用 cgit 托管小小的也很可爱的 Git 服",
        { b =>
            h2(b, "Dejavu's Blog - 使用 cgit 托管小小的也很可爱的 Git 服务器")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://dejavu.moe/posts/hosting-minimal-git-server-with-cgit/"), "阅读原文")
        }
    )
}
