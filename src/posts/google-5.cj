package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoogle5Post(): Post {
    return Post(
        "google-5",
        "神罗万象 - Google 搜索",
        "2024-09-09",
        "搜索页面：神罗万象 - Google 搜索",
        { b =>
            h2(b, "神罗万象 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b&sca_esv=c64c958eaf0dca0a&sxsrf=ADLYWIJmZ8MKXQ1Udq0WpCGFPXMtDejuLA:1725875763896&q=%E7%A5%9E%E7%BD%97%E4%B8%87%E8%B1%A1&spell=1&sa=X&ved=2ahUKEwjMmtWezLWIAxVHg4kEHcHkNxUQBSgAegQICBAB&biw=173&bih=355&dpr=2.5"), "访问原始链接")
        }
    )
}
