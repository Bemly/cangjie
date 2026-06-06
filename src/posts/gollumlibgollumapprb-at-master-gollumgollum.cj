package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGollumlibgollumapprbAtMasterGollumgollumPost(): Post {
    return Post(
        "gollumlibgollumapprb-at-master-gollumgollum",
        "gollum/lib/gollum/app.rb at master · gollum/gollum",
        "2024-02-04",
        "GitHub 文件：gollum/lib/gollum/app.rb at master · gol",
        { b =>
            h2(b, "gollum/lib/gollum/app.rb at master · gollum/gollum")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/gollum/gollum/blob/master/lib/gollum/app.rb"), "访问原始链接")
        }
    )
}
