package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowToRunMobaxtermOnLinuxBetaMobatekPost(): Post {
    return Post(
        "how-to-run-mobaxterm-on-linux-beta-mobatek",
        "How to run MobaXterm on Linux (beta) · Mobatek ...",
        "2023-10-17",
        "官方文档/工具：How to run MobaXterm on Linux (beta) · M",
        { b =>
            h2(b, "How to run MobaXterm on Linux (beta) · Mobatek ...")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://download.mobatek.net/mobaxterm-on-linux.html"), "访问原始链接")
        }
    )
}
