package bemlyCJWeb.posts

import bemlyCJWeb.*

public func getPost(): Post {
    return Post(
        "cloud-server-journey",
        "Cloud Server Journey",
        "2026-05-13",
        "开始云服务器之旅，记录从选购到部署的全过程。",
        """
            <p>开始使用阿里云 ECS 作为个人服务器，记录从选购、配置到部署第一个应用的全过程。</p>
            <h2>配置选择</h2>
            <p>选择 400MB 内存、20GB SSD 的轻量配置，对于个人博客和实验项目足够。</p>
            <h2>第一个应用</h2>
            <p>部署了基于仓颉语言 + Spire 天擎框架的个人博客，实现全栈仓颉开发。</p>
        """
    )
}
