package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFfmpegAmfGpuopenLibrariesandsdkPost(): Post {
    return Post(
        "ffmpeg-amf-gpuopen-librariesandsdk",
        "FFmpeg 中的 AMF 编码器设置与调谐 ·GPUOpen-LibrariesAndSDK...",
        "2026-03-09",
        "GitHub Wiki：FFmpeg 中的 AMF 编码器设置与调谐 ·GPUOpen-Librarie",
        { b =>
            h2(b, "FFmpeg 中的 AMF 编码器设置与调谐 ·GPUOpen-LibrariesAndSDK...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/GPUOpen-LibrariesAndSDKs/AMF/wiki/AMF-Encoder-Settings-and-Tuning-in-FFmpeg"), "访问原始链接")
        }
    )
}
