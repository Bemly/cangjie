package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWaylandLinuxHyprlandPost(): Post {
    return Post(
        "wayland-linux-hyprland",
        "如何评价一个新的基于 Wayland 的 Linux 桌面环境： Hyprland? - V2EX",
        "2024-08-06",
        "论坛/讨论：如何评价一个新的基于 Wayland 的 Linux 桌面环境： Hyprlan",
        { b =>
            h2(b, "如何评价一个新的基于 Wayland 的 Linux 桌面环境： Hyprland? - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://cn.v2ex.com/t/1034885"), "访问原始链接")
        }
    )
}
