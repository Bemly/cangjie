package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMakeASupportRequestToTheUbuntuCommunityPost(): Post {
    return Post(
        "make-a-support-request-to-the-ubuntu-community",
        "Make a Support Request to the Ubuntu Community",
        "2022-06-22",
        "原文待补充：Make a Support Request to the Ubuntu Com",
        { b =>
            h2(b, "Make a Support Request to the Ubuntu Community")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://answers.launchpad.net/ubuntu/+addquestion"), "阅读原文")
        }
    )
}
