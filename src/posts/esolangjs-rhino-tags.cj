package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEsolangjsRhinoTagsPost(): Post {
    return Post(
        "esolangjs-rhino-tags",
        "esolang/js-rhino Tags",
        "[https://hub.docker.com/r/esolang/js-rhino/tags?page=&page...](https://hub.docker.com/r/esolang/js-rhino/tags?page=&page_size=&ordering=-name&name=)",
        "原文待补充：esolang/js-rhino Tags",
        { b =>
            h2(b, "esolang/js-rhino Tags")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Docker Hub"), "阅读原文")
        }
    )
}
