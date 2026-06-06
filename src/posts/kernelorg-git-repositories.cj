package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKernelorgGitRepositoriesPost(): Post {
    return Post(
        "kernelorg-git-repositories",
        "Kernel.org git repositories",
        "2023-05-11",
        "原文待补充：Kernel.org git repositories",
        { b =>
            h2(b, "Kernel.org git repositories")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://git.kernel.org/"), "阅读原文")
        }
    )
}
