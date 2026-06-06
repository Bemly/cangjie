package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowIUseGithubsWikiFeatureForApiDocumenPost(): Post {
    return Post(
        "how-i-use-githubs-wiki-feature-for-api-documen",
        "How I Use Github’s Wiki Feature For API Documen...",
        "2024-02-04",
        "网站主页：How I Use Github’s Wiki Feature For API ",
        { b =>
            h2(b, "How I Use Github’s Wiki Feature For API Documen...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stephenmcbride.medium.com/how-i-use-githubs-wiki-feature-for-api-documentation-996a6407d270"), "访问原始链接")
        }
    )
}
