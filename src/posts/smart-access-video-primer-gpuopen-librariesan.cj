package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSmartAccessVideoPrimerGpuopenLibrariesanPost(): Post {
    return Post(
        "smart-access-video-primer-gpuopen-librariesan",
        "Smart Access Video Primer · GPUOpen-LibrariesAn...",
        "2026-03-09",
        "GitHub Wiki：Smart Access Video Primer · GPUOpen-Libr",
        { b =>
            h2(b, "Smart Access Video Primer · GPUOpen-LibrariesAn...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/GPUOpen-LibrariesAndSDKs/AMF/wiki/Smart-Access-Video-Primer"), "访问原始链接")
        }
    )
}
