package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGiteecom2Post(): Post {
    return Post(
        "giteecom-2",
        "鸿蒙开源项目 - 鸿蒙教程指南 - 开源软件 - Gitee.com",
        "2021-08-02",
        "Gitee 页面：鸿蒙开源项目 - 鸿蒙教程指南 - 开源软件 - Gitee.com",
        { b =>
            h2(b, "鸿蒙开源项目 - 鸿蒙教程指南 - 开源软件 - Gitee.com")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/explore/harmonyos-guide"), "访问原始链接")
        }
    )
}
