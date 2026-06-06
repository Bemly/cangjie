package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenjdknashornHttpsopenjdkorgprojectsnPost(): Post {
    return Post(
        "openjdknashorn-httpsopenjdkorgprojectsn",
        "openjdk/nashorn: https://openjdk.org/projects/n...",
        "2024-08-19",
        "GitHub 仓库：openjdk/nashorn: https://openjdk.org/pro",
        { b =>
            h2(b, "openjdk/nashorn: https://openjdk.org/projects/n...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/openjdk/nashorn"), "访问原始链接")
        }
    )
}
