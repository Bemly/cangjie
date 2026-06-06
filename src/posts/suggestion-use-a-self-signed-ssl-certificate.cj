package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSuggestionUseASelfSignedSslCertificatePost(): Post {
    return Post(
        "suggestion-use-a-self-signed-ssl-certificate",
        "[SUGGESTION] Use a self-signed SSL certificate ...",
        "2024-09-23",
        "GitHub Issue：[SUGGESTION] Use a self-signed SSL certi",
        { b =>
            h2(b, "[SUGGESTION] Use a self-signed SSL certificate ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/chaitin/SafeLine/issues/978"), "访问原始链接")
        }
    )
}
