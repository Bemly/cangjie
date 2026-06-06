package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCloudServerJourneyPost(): Post {
    return Post(
        "cloud-server-journey",
        "Cloud Server Journey",
        "2026-05-13",
        "开始云服务器之旅，记录从选购到部署的全过程。",
        { b =>
            p(b, "开始使用阿里云 ECS 作为个人服务器，记录从选购、配置到部署第一个应用的全过程。")
            h2(b, "配置选择")
            p(b, "选择 400MB 内存、20GB SSD 的轻量配置，对于个人博客和实验项目足够。")
            h2(b, "第一个应用")
            p(b, "部署了基于仓颉语言 + Spire 天擎框架的个人博客，实现全栈仓颉开发。")
        }
    )
}
