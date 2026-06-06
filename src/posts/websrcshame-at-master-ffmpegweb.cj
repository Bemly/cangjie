package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWebsrcshameAtMasterFfmpegwebPost(): Post {
    return Post(
        "websrcshame-at-master-ffmpegweb",
        "web/src/shame at master · FFmpeg/web",
        "2024-08-11",
        "GitHub 文件：web/src/shame at master · FFmpeg/web",
        { b =>
            h2(b, "web/src/shame at master · FFmpeg/web")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/FFmpeg/web/blob/master/src/shame"), "访问原始链接")
        }
    )
}
