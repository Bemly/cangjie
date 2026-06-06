package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArchcraftHomePost(): Post {
    return Post(
        "archcraft-home",
        "Archcraft : Home",
        "2023-10-24",
        "Archcraft是一个基于Arch Linux的极简Linux发行版，使用轻量级窗口管理器和应用程序，运行超级流畅。",
        { b =>
            h2(b, "Archcraft : Home")
            p(b, "Archcraft is a minimal Linux distribution built on Arch Linux. It uses lightweight window managers and applications, making it super fast. With preconfigured settings, Archcraft delivers one of the best out-of-the-box window manager experiences.")
            h2(b, "Features")
            p(b, "Minimal — Archcraft stays minimal and responsive. With lightweight apps and window managers, it runs smoothly on under 500 MB of memory.")
            p(b, "Stunning — Flat and pastel colors, consistent UI elements, and multiple themes make Archcraft look clean, minimal, and stunning.")
            p(b, "Powerful — With cutting-edge software, seamless AUR access, and a minimal footprint, Archcraft empowers you to do more on your Linux PC.")
            h2(b, "Communities")
            p(b, "Join the official Archcraft communities — friendly spaces to share, connect, and get support. Available on Reddit, Discord, Telegram, and Matrix.")
            h2(b, "Custom Linux OS")
            p(b, "If you need a Linux OS tailored to your specific workflow and preferences, the developer offers custom Linux distributions with the window manager or desktop environment of your choice, along with any tools and configurations you require.")
            h2(b, "Sponsor")
            p(b, "If you enjoy using Archcraft, please consider sponsoring on GitHub. Your support helps Archcraft improve, stay updated, and continue to grow — ensuring it remains well-maintained and alive.")
            a(b, attrs("href", "https://archcraft.io/"), "访问原始链接")
        }
    )
}
