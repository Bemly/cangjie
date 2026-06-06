package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYoureInvitedToTalkOnMatrixPost(): Post {
    return Post(
        "youre-invited-to-talk-on-matrix",
        "You're invited to talk on Matrix",
        "2022-08-21",
        "原文待补充：You're invited to talk on Matrix",
        { b =>
            h2(b, "You're invited to talk on Matrix")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://matrix.to/#/#deepin:matrix.org"), "阅读原文")
        }
    )
}
