package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getProbiusofficialctfQuickstart0ctfPost(): Post {
    return Post(
        "probiusofficialctf-quickstart-0ctf",
        "ProbiusOfficial/CTF-QuickStart: 针对0基础新手编写的CTF快速...",
        "2023-04-26",
        "GitHub 仓库：ProbiusOfficial/CTF-QuickStart: 针对0基础新手编",
        { b =>
            h2(b, "ProbiusOfficial/CTF-QuickStart: 针对0基础新手编写的CTF快速...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/ProbiusOfficial/CTF-QuickStart"), "访问原始链接")
        }
    )
}
