package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMicrosoftdotnetDockerImagePost(): Post {
    return Post(
        "microsoftdotnet-docker-image",
        "microsoft/dotnet - Docker Image",
        "[https://hub.docker.com/r/microsoft/dotnet](https://hub.docker.com/r/microsoft/dotnet)",
        "原文待补充：microsoft/dotnet - Docker Image",
        { b =>
            h2(b, "microsoft/dotnet - Docker Image")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Docker Hub"), "阅读原文")
        }
    )
}
