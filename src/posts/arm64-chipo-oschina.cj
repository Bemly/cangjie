package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArm64ChipoOschinaPost(): Post {
    return Post(
        "arm64-chipo-oschina",
        "优麒麟中安装虚拟机（ARM64） - chipo的个人空间 - OSCHINA - 中文开源技...",
        "2021-12-31",
        "原文待补充：优麒麟中安装虚拟机（ARM64） - chipo的个人空间 - OSCHINA ",
        { b =>
            h2(b, "优麒麟中安装虚拟机（ARM64） - chipo的个人空间 - OSCHINA - 中文开源技...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://my.oschina.net/chipo/blog/4307152"), "阅读原文")
        }
    )
}
