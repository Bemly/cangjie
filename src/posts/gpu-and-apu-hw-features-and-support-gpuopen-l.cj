package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGpuAndApuHwFeaturesAndSupportGpuopenLPost(): Post {
    return Post(
        "gpu-and-apu-hw-features-and-support-gpuopen-l",
        "GPU and APU HW Features and Support · GPUOpen-L...",
        "2026-03-09",
        "GitHub Wiki：GPU and APU HW Features and Support · GP",
        { b =>
            h2(b, "GPU and APU HW Features and Support · GPUOpen-L...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/GPUOpen-LibrariesAndSDKs/AMF/wiki/GPU-and-APU-HW-Features-and-Support"), "访问原始链接")
        }
    )
}
