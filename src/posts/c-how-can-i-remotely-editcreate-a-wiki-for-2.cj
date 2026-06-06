package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCHowCanIRemotelyEditcreateAWikiFor2Post(): Post {
    return Post(
        "c-how-can-i-remotely-editcreate-a-wiki-for-2",
        "c# - How can I remotely edit/create a wiki for ...",
        "2024-02-04",
        "网站主页：c# - How can I remotely edit/create a wi",
        { b =>
            h2(b, "c# - How can I remotely edit/create a wiki for ...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/16794493/how-can-i-remotely-edit-create-a-wiki-for-a-github-repo?newreg=3dd66cc4c0e84604b51a4b2361189a46"), "访问原始链接")
        }
    )
}
