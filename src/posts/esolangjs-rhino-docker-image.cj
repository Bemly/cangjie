package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEsolangjsRhinoDockerImagePost(): Post {
    return Post(
        "esolangjs-rhino-docker-image",
        "esolang/js-rhino - Docker Image",
        "[https://hub.docker.com/r/esolang/js-rhino](https://hub.docker.com/r/esolang/js-rhino)",
        "原文待补充：esolang/js-rhino - Docker Image",
        { b =>
            h2(b, "esolang/js-rhino - Docker Image")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Docker Hub"), "阅读原文")
        }
    )
}
