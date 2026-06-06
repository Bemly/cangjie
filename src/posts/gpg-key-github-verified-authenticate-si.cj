package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGpgKeyGithubVerifiedAuthenticateSiPost(): Post {
    return Post(
        "gpg-key-github-verified-authenticate-si",
        "GPG key 实现 GitHub Verified 认证（Authenticate & Si...",
        "2025-04-30",
        "原文待补充：GPG key 实现 GitHub Verified 认证（Authentica",
        { b =>
            h2(b, "GPG key 实现 GitHub Verified 认证（Authenticate & Si...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://soft.moe/technology/cryptography/kun-gpg.html"), "阅读原文")
        }
    )
}
