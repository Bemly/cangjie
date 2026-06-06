package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCutefishosCutefishOsBuiltOnUbuntuPost(): Post {
    return Post(
        "cutefishos-cutefish-os-built-on-ubuntu",
        "CutefishOS – Cutefish OS Built on Ubuntu",
        "2022-08-01",
        "CutefishOS 是一个基于 Ubuntu/Debian 的优雅美观的 Linux 桌面操作系统，提供现代化的 Cutefish Desktop 环境。",
        { b =>
            h2(b, "CutefishOS – Cutefish OS Built on Ubuntu")
            p(b, "CutefishOS is an elegant, beautiful and easy-to-use Linux desktop operating system. It runs Cutefish Desktop with a modern style design. The goal is to provide users with a comfortable interface design, better user experience and a better choice.")
            h2(b, "CutefishOS 22.04 YoYo - Beta 1")
            p(b, "Built on Ubuntu 22.04 Jammy Jellyfish. Developed with the assistance of the YoYo team - a division of Deepin. Part of the code was rewritten from scratch, part was corrected and brought up to date. Fixed Kwin compatibility issues. The appearance of CutefishDE was left in its original state, but due to code optimization it became smoother and more responsive.")
            p(b, "Download: Cowtransfer | SourceForge")
            h2(b, "CutefishOS Built on Debian 12")
            p(b, "CutefishOS - Debian 12 - Beta. Available for download on SourceForge.")
            h2(b, "CutefishOS Built on Debian 11")
            p(b, "CutefishOS - Debian v0.8 - Beta. Available for download on SourceForge.")
            h2(b, "CutefishOS Built on Ubuntu 21.10 (Impish Indri)")
            p(b, "Two variants available: Calamares Installer and Ubiquity Installer (MEGA | SourceForge | Torrent).")
            h2(b, "CutefishOS Built on Ubuntu 21.04 (Hirsute Hippo)")
            p(b, "CutefishOS - Ubuntu v0.4.2 Beta - Developer Edition. Download: MEGA | Direct Link.")
            h2(b, "Community")
            raw(b, "<ul><li>SourceForge</li><li>Telegram Group & Chat</li><li>Discord</li><li>GitHub</li></ul>")
            a(b, attrs("href", "https://cutefish-ubuntu.github.io/download/"), "阅读原文")
        }
    )
}
