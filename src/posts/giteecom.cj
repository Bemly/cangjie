package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGiteecomPost(): Post {
    return Post(
        "giteecom",
        "登录 - Gitee.com",
        "2021-08-02",
        "登录页面：登录 - Gitee.com",
        { b =>
            h2(b, "登录 - Gitee.com")
            p(b, "此链接为登录页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/login"), "访问原始链接")
        }
    )
}
