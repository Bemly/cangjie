package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMakeZedChannelDiscoverableIssue9091Post(): Post {
    return Post(
        "make-zed-channel-discoverable-issue-9091",
        "Make #zed channel discoverable · Issue #9091 · ...",
        "2024-08-12",
        "GitHub Issue：Make #zed channel discoverable · Issue #",
        { b =>
            h2(b, "Make #zed channel discoverable · Issue #9091 · ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/zed-industries/zed/issues/9091"), "访问原始链接")
        }
    )
}
