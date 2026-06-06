package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVideoCodecSdkGetStartedPost(): Post {
    return Post(
        "video-codec-sdk-get-started",
        "Video Codec SDK - Get Started",
        "[https://developer.nvidia.com/nvidia-video-codec-sdk/download](https://developer.nvidia.com/nvidia-video-codec-sdk/download)",
        "原文待补充：Video Codec SDK - Get Started",
        { b =>
            h2(b, "Video Codec SDK - Get Started")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "NVIDIA Developer"), "阅读原文")
        }
    )
}
