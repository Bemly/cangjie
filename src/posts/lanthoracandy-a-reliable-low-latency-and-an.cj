package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLanthoracandyAReliableLowLatencyAndAnPost(): Post {
    return Post(
        "lanthoracandy-a-reliable-low-latency-and-an",
        "lanthora/candy: A reliable, low-latency, and an...",
        "2024-07-25",
        "GitHub 仓库：lanthora/candy: A reliable, low-latency,",
        { b =>
            h2(b, "lanthora/candy: A reliable, low-latency, and an...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/lanthora/candy"), "访问原始链接")
        }
    )
}
