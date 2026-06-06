package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getImportOpenvpnProfileIssue43LinuxdeepiPost(): Post {
    return Post(
        "import-openvpn-profile-issue-43-linuxdeepi",
        "Import OpenVPN profile · Issue #43 · linuxdeepi...",
        "2021-09-11",
        "GitHub Issue：Import OpenVPN profile · Issue #43 · lin",
        { b =>
            h2(b, "Import OpenVPN profile · Issue #43 · linuxdeepi...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/linuxdeepin/dde-control-center/issues/43"), "访问原始链接")
        }
    )
}
