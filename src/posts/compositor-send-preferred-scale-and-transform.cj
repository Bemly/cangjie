package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCompositorSendPreferredScaleAndTransformPost(): Post {
    return Post(
        "compositor-send-preferred-scale-and-transform",
        "compositor: send preferred scale and transform ...",
        "2024-08-02",
        "GitHub Commit：compositor: send preferred scale and tra",
        { b =>
            h2(b, "compositor: send preferred scale and transform ...")
            p(b, "此链接为 GitHub Commit，非博客文章。")
            a(b, attrs("href", "https://github.com/hyprwm/Hyprland/commit/59f27e7f570170783ac01fb46a0ff90e14de53e6"), "访问原始链接")
        }
    )
}
