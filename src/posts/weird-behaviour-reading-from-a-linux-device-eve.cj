package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWeirdBehaviourReadingFromALinuxDeviceEvePost(): Post {
    return Post(
        "weird-behaviour-reading-from-a-linux-device-eve",
        "Weird behaviour reading from a Linux device eve...",
        "2024-08-10",
        "论坛/讨论：Weird behaviour reading from a Linux dev",
        { b =>
            h2(b, "Weird behaviour reading from a Linux device eve...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://users.rust-lang.org/t/weird-behaviour-reading-from-a-linux-device-event-stream/43816"), "访问原始链接")
        }
    )
}
