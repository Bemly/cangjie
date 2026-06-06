package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSearchAlgorithmPuppyPost(): Post {
    return Post(
        "search-algorithm-puppy",
        "search algorithm puppy",
        "2024-02-03",
        "网站主页：search algorithm puppy",
        { b =>
            h2(b, "search algorithm puppy")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://codepen.io/Ma5a/full/jOBWBYw"), "访问原始链接")
        }
    )
}
