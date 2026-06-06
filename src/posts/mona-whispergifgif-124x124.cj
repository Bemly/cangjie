package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMonaWhispergifgif124x124Post(): Post {
    return Post(
        "mona-whispergifgif-124x124",
        "mona-whisper.gif（GIF 图像，124x124 像素）",
        "2024-02-02",
        "GitHub 仓库：mona-whisper.gif（GIF 图像，124x124 像素）",
        { b =>
            h2(b, "mona-whisper.gif（GIF 图像，124x124 像素）")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/images/mona-whisper.gif"), "访问原始链接")
        }
    )
}
