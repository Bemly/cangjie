package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheChineseBlogosphereAsASiteOfSocialEngPost(): Post {
    return Post(
        "the-chinese-blogosphere-as-a-site-of-social-eng",
        "The Chinese Blogosphere as a Site of Social Eng...",
        "2024-02-02",
        "网站主页：The Chinese Blogosphere as a Site of Soc",
        { b =>
            h2(b, "The Chinese Blogosphere as a Site of Social Eng...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://fastcapitalism.uta.edu/11_1/liu11_1.html"), "访问原始链接")
        }
    )
}
