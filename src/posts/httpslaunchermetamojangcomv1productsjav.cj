package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHttpslaunchermetamojangcomv1productsjavPost(): Post {
    return Post(
        "httpslaunchermetamojangcomv1productsjav",
        "https://launchermeta.mojang.com/v1/products/jav...",
        "2024-12-30",
        "API/文档文件：https://launchermeta.mojang.com/v1/produ",
        { b =>
            h2(b, "https://launchermeta.mojang.com/v1/products/jav...")
            p(b, "此链接为 API 端点或文档文件，非博客文章。")
            a(b, attrs("href", "https://launchermeta.mojang.com/v1/products/java-runtime/2ec0cc96c44e5a76b9c8b7c39df7210883d12871/all.json"), "访问原始链接")
        }
    )
}
