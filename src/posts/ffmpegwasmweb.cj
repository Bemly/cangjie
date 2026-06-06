package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFfmpegwasmwebPost(): Post {
    return Post(
        "ffmpegwasmweb",
        "基于FFmpeg和Wasm的Web端视频截帧方案",
        "2024-08-13",
        "原文待补充：基于FFmpeg和Wasm的Web端视频截帧方案",
        { b =>
            h2(b, "基于FFmpeg和Wasm的Web端视频截帧方案")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1762487045480372821&wfr=spider&for=pc&searchword=ffmpeg%20wasm%20webgl"), "阅读原文")
        }
    )
}
