package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSparcTimeoutWaitingForArprarpPacketIssPost(): Post {
    return Post(
        "sparc-timeout-waiting-for-arprarp-packet-iss",
        "SPARC timeout waiting for ARP/RARP packet · Iss...",
        "2025-05-20",
        "GitHub Issue：SPARC timeout waiting for ARP/RARP packe",
        { b =>
            h2(b, "SPARC timeout waiting for ARP/RARP packet · Iss...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/utmapp/UTM/issues/6757"), "访问原始链接")
        }
    )
}
