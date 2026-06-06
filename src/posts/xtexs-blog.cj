package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXtexsBlogPost(): Post {
    return Post(
        "xtexs-blog",
        "xtex's Blog",
        "2023-08-21",
        "xtex 的个人技术博客，涵盖 CTF 竞赛、Hexo 主题开发、系统迁移、安全漏洞披露等技术内容。",
        { b =>
            h2(b, "xtex's Blog")
            p(b, "xtex's Blog 是一个个人技术博客，记录了作者在信息安全、竞赛编程、系统管理等方面的技术经验和学习笔记。")
            p(b, "2025年的文章包括：\"于镜面边缘回望\"、\"MSI、UEFI与0000424F\"、\"Passing integers on 64-bits machines\"、\"Managing a troop of repositories\"、\"The rename of my GitHub account\" 等。")
            p(b, "2024年的文章有：\"一只 OIer 的记忆碎片\"（OI 竞赛回忆）、\"The migration from neko.ci\"（站点迁移）、\"qy.yjzqy.net Filter Bypass Vulnerability Disclosure\"（安全漏洞披露）。")
            p(b, "2023年的内容更为丰富：NOIP 2023 游记、CSP-S 2023 游记、XTEXX.ML to XTEXX.EU.ORG 域名迁移、AmateursCTF 和 Crew CTF 的 Writeup、新 SSH 与 GPG 密钥启用、Blog 重构等。")
            p(b, "2022年的文章包括 Hackergame 2022 Writeup 和 Burble DN42 Ping Challenge Writeup。2021年有 Some simply crackmes Writeup、\"从零开始的Hexo主题\"、Hello World，以及一篇关于在不支持 OpenGL 3.2 的设备上用软件渲染玩 Minecraft 1.17 的文章。")
            p(b, "博客展示了作者从 2021 年到 2025 年的技术成长历程，从 OI 竞赛到 CTF 安全竞赛，从 Hexo 主题开发到系统架构管理，内容跨度广泛且持续更新。")
            a(b, attrs("href", "https://blog.xtexx.eu.org/archives/"), "阅读原文")
        }
    )
}
