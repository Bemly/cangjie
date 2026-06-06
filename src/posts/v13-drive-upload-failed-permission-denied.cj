package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getV13DriveUploadFailedPermissionDeniedPost(): Post {
    return Post(
        "v13-drive-upload-failed-permission-denied",
        "[v13] Drive upload failed (permission denied) ·...",
        "2024-09-28",
        "GitHub Issue：[v13] Drive upload failed (permission de",
        { b =>
            h2(b, "[v13] Drive upload failed (permission denied) ·...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/misskey-dev/misskey/issues/9564"), "访问原始链接")
        }
    )
}
