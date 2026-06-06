package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleaseRadeonProrenderForBlenderV3610BPost(): Post {
    return Post(
        "release-radeon-prorender-for-blender-v3610-b",
        "Release Radeon ProRender for Blender v3.6.10 (B...",
        "2024-11-28",
        "GitHub Releases：Release Radeon ProRender for Blender v3.",
        { b =>
            h2(b, "Release Radeon ProRender for Blender v3.6.10 (B...")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/GPUOpen-LibrariesAndSDKs/RadeonProRenderBlenderAddon/releases/tag/v3.6.10"), "访问原始链接")
        }
    )
}
