package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB01nodeexpressPost(): Post {
    return Post(
        "01-node-express",
        "手把手教前端从0到1通过 Node + Express 开发简易接口，项目开发+部署服务器(亲...",
        "2024-08-19",
        "原文待补充：手把手教前端从0到1通过 Node + Express 开发简易接口，项目开发+",
        { b =>
            h2(b, "手把手教前端从0到1通过 Node + Express 开发简易接口，项目开发+部署服务器(亲...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://juejin.cn/post/7097831496550973454"), "阅读原文")
        }
    )
}
