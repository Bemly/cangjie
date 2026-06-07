package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWindowsTerminalPost(): Post {
    return Post(
        "windowsterminal",
        "windows.terminal 外观设置（亚克力+复古）",
        "2021-11-21",
        "Windows Terminal外观设置教程，配置亚克力效果和复古终端效果。",
        { b =>
            p(b, "打开Windows Terminal设置之后，目标是一个settings.json文件。在 profiles -> defaults 下面做出以下修改：")
            p(b, "fontFace：设置字体，比较好看的还有 \"Fira Code\"、\"Consolas\"、\"Cascadia Code\" 等。")
            p(b, "experimental.retroTerminalEffect：设为 true 开启复古效果。")
            p(b, "useAcrylic：设为 true 开启亚克力效果。")
            p(b, "acrylicOpacity：亚克力效果强度，1是效果最小，0.1是最强。过于模糊的效果在浅色背景下会影响阅读代码，所以在0.4-0.6之间比较合适。")
            p(b, "配置示例：在defaults中添加 fontFace: \"Menlo\", experimental.retroTerminalEffect: true, useAcrylic: true, acrylicOpacity: 0.6 即可获得复古亚克力效果。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/windowsterminal/terminal-appearance.avif", "alt", "Windows Terminal外观", "style", "max-width:100%"))
            a(b, attrs("href", "https://www.cnblogs.com/zhangz0126/p/14436523.html"), "阅读原文")
        }
    )
}
