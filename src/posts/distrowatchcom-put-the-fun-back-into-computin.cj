package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDistrowatchcomPutTheFunBackIntoComputinPost(): Post {
    return Post(
        "distrowatchcom-put-the-fun-back-into-computin",
        "DistroWatch.com: Put the fun back into computin...",
        "2022-01-01",
        "原文待补充：DistroWatch.com: Put the fun back into c",
        { b =>
            h2(b, "DistroWatch.com: Put the fun back into computin...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://distrowatch.com/search.php?origin=China#simple"), "阅读原文")
        }
    )
}
