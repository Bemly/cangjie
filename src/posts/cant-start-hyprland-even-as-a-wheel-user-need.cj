package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCantStartHyprlandEvenAsAWheelUserNeedPost(): Post {
    return Post(
        "cant-start-hyprland-even-as-a-wheel-user-need",
        "cant start Hyprland even as a wheel user. need ...",
        "2024-08-10",
        "论坛/讨论：cant start Hyprland even as a wheel user",
        { b =>
            h2(b, "cant start Hyprland even as a wheel user. need ...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.reddit.com/r/archlinux/comments/1dlrlmr/cant_start_hyprland_even_as_a_wheel_user_need_to/"), "访问原始链接")
        }
    )
}
