package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFfmpegGpuopenLibrariesandsdksamfPost(): Post {
    return Post(
        "ffmpeg-gpuopen-librariesandsdksamf",
        "推荐的 FFmpeg 编码器设置·GPUOpen-LibrariesAndSDKs/AMF 维...",
        "2026-03-04",
        "GitHub Wiki：推荐的 FFmpeg 编码器设置·GPUOpen-LibrariesAndSDK",
        { b =>
            h2(b, "推荐的 FFmpeg 编码器设置·GPUOpen-LibrariesAndSDKs/AMF 维...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/GPUOpen-LibrariesAndSDKs/AMF/wiki/Recommended-FFmpeg-Encoder-Settings"), "访问原始链接")
        }
    )
}
