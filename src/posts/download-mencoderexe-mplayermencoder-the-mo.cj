package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDownloadMencoderexeMplayermencoderTheMoPost(): Post {
    return Post(
        "download-mencoderexe-mplayermencoder-the-mo",
        "Download mencoder.exe MPlayer/MEncoder - The Mo...",
        "2021-11-28",
        "网站主页：Download mencoder.exe MPlayer/MEncoder -",
        { b =>
            h2(b, "Download mencoder.exe MPlayer/MEncoder - The Mo...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://api.256file.com/mencoder.exe/en-download-445064.html"), "访问原始链接")
        }
    )
}
