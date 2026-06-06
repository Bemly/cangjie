package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIdeHowCanIRestoreTheIntellijIdeaCommiPost(): Post {
    return Post(
        "ide-how-can-i-restore-the-intellij-idea-commi",
        "ide - How can I restore the IntelliJ IDEA commi...",
        "2024-08-09",
        "网站主页：ide - How can I restore the IntelliJ IDE",
        { b =>
            h2(b, "ide - How can I restore the IntelliJ IDEA commi...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/72490629/how-can-i-restore-the-intellij-idea-commit-tab"), "访问原始链接")
        }
    )
}
