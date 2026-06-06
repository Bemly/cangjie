package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBilibiliAssPost(): Post {
    return Post(
        "bilibili-ass",
        "bilibili ASS 弹幕在线转换",
        "2021-12-04",
        "以 ASS 格式下载 bilibili 视频弹幕，兼容 libass 和 VSFilter 的 ASS 格式解析器。",
        { b =>
            h2(b, "bilibili ASS 弹幕在线转换")
            p(b, "以 ASS 格式下载 bilibili 视频弹幕。兼容 libass 和 VSFilter 的 ASS 格式解析器。")
            h2(b, "在线转换")
            p(b, "如果您手工下载了弹幕的 XML 文件，您可以点击上方的在线转换按钮将 XML 文件转换为 ASS 字幕文件。转换无需安装脚本或任何扩展。")
            h2(b, "相关脚本")
            p(b, "AcFun的弹幕请参考：AcFun ASS 弹幕在线转换。")
            a(b, attrs("href", "http://tiansh.github.io/us-danmaku/bilibili/"), "阅读原文")
        }
    )
}
