package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustLineBotwebPost(): Post {
    return Post(
        "rust-line-botweb",
        "実践Rustプログラミング　LINE botを題材に学ぶWebアプリケーション開発",
        "[https://nextpublishing.jp/book/18712.html](https://nextpublishing.jp/book/18712.html)",
        "原文待补充：実践Rustプログラミング　LINE botを題材に学ぶWebアプリケーション開",
        { b =>
            h2(b, "実践Rustプログラミング　LINE botを題材に学ぶWebアプリケーション開発")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "イン..."), "阅读原文")
        }
    )
}
