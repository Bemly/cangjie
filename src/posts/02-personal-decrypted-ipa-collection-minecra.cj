package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB02personaldecryptedipacollectionminecraPost(): Post {
    return Post(
        "02-personal-decrypted-ipa-collection-minecra",
        "[02] Personal decrypted IPA collection: Minecra...",
        "2026-02-05",
        "原文待补充：[02] Personal decrypted IPA collection: ",
        { b =>
            h2(b, "[02] Personal decrypted IPA collection: Minecra...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://archive.org/details/NL-IPAA-02"), "阅读原文")
        }
    )
}
