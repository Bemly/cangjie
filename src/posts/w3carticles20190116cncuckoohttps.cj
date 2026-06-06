package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getW3carticles20190116cncuckoohttpsPost(): Post {
    return Post(
        "w3carticles20190116cncuckoohttps",
        "w3c/articles/20190116_cncuckoo_快速搭建基于HTTPS的本地开发...",
        "2024-03-21",
        "GitHub 文件：w3c/articles/20190116_cncuckoo_快速搭建基于HTT",
        { b =>
            h2(b, "w3c/articles/20190116_cncuckoo_快速搭建基于HTTPS的本地开发...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/75team/w3c/blob/master/articles/20190116_cncuckoo_%E5%BF%AB%E9%80%9F%E6%90%AD%E5%BB%BA%E5%9F%BA%E4%BA%8EHTTPS%E7%9A%84%E6%9C%AC%E5%9C%B0%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83.md"), "访问原始链接")
        }
    )
}
