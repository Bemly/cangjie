package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPythonCondaPost(): Post {
    return Post(
        "python-conda",
        "Python 除了 Conda 就没有其它的 二进制下载(非源码编译)的版本管理器了吗? - ...",
        "2025-01-26",
        "论坛/讨论：Python 除了 Conda 就没有其它的 二进制下载(非源码编译)的版本管理",
        { b =>
            h2(b, "Python 除了 Conda 就没有其它的 二进制下载(非源码编译)的版本管理器了吗? - ...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://v2ex.com/t/1037480"), "访问原始链接")
        }
    )
}
