package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPsaOnHyprlandWeztermWillNotStartAnymorPost(): Post {
    return Post(
        "psa-on-hyprland-wezterm-will-not-start-anymor",
        "PSA: on Hyprland, wezterm will not start anymor...",
        "2024-08-02",
        "论坛/讨论：PSA: on Hyprland, wezterm will not start",
        { b =>
            h2(b, "PSA: on Hyprland, wezterm will not start anymor...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.reddit.com/r/archlinux/comments/18rf5t1/psa_on_hyprland_wezterm_will_not_start_anymore/?onetap_auto=true&one_tap=true"), "访问原始链接")
        }
    )
}
