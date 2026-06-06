package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLowlightermetricsAnInfographicsGeneratorPost(): Post {
    return Post(
        "lowlightermetrics-an-infographics-generator",
        "lowlighter/metrics: 📊 An infographics generator...",
        "2024-09-10",
        "GitHub 仓库：lowlighter/metrics: 📊 An infographics ge",
        { b =>
            h2(b, "lowlighter/metrics: 📊 An infographics generator...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/lowlighter/metrics"), "访问原始链接")
        }
    )
}
