package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascriptGetRenderedHtmlWikiPageUsingPost(): Post {
    return Post(
        "javascript-get-rendered-html-wiki-page-using",
        "javascript - Get rendered html wiki page using ...",
        "2024-02-04",
        "网站主页：javascript - Get rendered html wiki page",
        { b =>
            h2(b, "javascript - Get rendered html wiki page using ...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/48246333/get-rendered-html-wiki-page-using-the-github-api"), "访问原始链接")
        }
    )
}
