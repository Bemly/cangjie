package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJenkinsGooglePost(): Post {
    return Post(
        "jenkins-google",
        "jenkins - Google 搜索",
        "2024-12-03",
        "搜索页面：jenkins - Google 搜索",
        { b =>
            h2(b, "jenkins - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=jenkins"), "访问原始链接")
        }
    )
}
