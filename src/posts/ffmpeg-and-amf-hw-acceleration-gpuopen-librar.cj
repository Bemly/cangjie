package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFfmpegAndAmfHwAccelerationGpuopenLibrarPost(): Post {
    return Post(
        "ffmpeg-and-amf-hw-acceleration-gpuopen-librar",
        "FFmpeg and AMF HW Acceleration · GPUOpen-Librar...",
        "2026-03-09",
        "GitHub Wiki：FFmpeg and AMF HW Acceleration · GPUOpen",
        { b =>
            h2(b, "FFmpeg and AMF HW Acceleration · GPUOpen-Librar...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/GPUOpen-LibrariesAndSDKs/AMF/wiki/FFmpeg-and-AMF-HW-Acceleration"), "访问原始链接")
        }
    )
}
