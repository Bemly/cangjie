package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWindowsiisPost(): Post {
    return Post(
        "windowsiis",
        "各版本Windows对应IIS版本 - 贺兰雪 - 博客园",
        "2024-03-21",
        "原文已失效（404），原为博客园贺兰雪的文章，介绍各版本Windows对应的IIS版本",
        { b =>
            h2(b, "各版本Windows对应IIS版本")
            p(b, "该文章链接已失效，返回404错误。原文发布在博客园（cnblogs.com），作者为贺兰雪。")
            p(b, "文章原意是介绍Windows各版本操作系统所对应的IIS（Internet Information Services）版本，帮助开发者了解不同Windows版本可以使用的Web服务器功能。")
            p(b, "IIS是微软提供的Web服务器组件，不同Windows版本附带不同IIS版本，从Windows XP的IIS 5.1到Windows Server 2022的IIS 10.0，各版本在功能和性能上有所差异。")
            a(b, attrs("href", "https://www.cnblogs.com/Zhao-Chen/articles/17386983.html"), "原始链接（已失效）")
        }
    )
}
