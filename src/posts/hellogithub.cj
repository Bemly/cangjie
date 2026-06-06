package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHellogithubPost(): Post {
    return Post(
        "hellogithub",
        "HelloGitHub",
        "2024-02-03",
        "HelloGitHub 是一个发现和分享有趣、入门级开源项目的平台，帮助大家轻松开启开源之旅。",
        { b =>
            h2(b, "HelloGitHub")
            p(b, "HelloGitHub 是一个发现和分享有趣、入门级开源项目的平台。目标是让大家能够在这里找到编程的快乐、轻松搞定问题的技术方案、大呼过瘾的开源神器，顺其自然地开启开源之旅。平台目前拥有 5.6 万用户，收录 4340 个开源项目。")
            p(b, "平台按热门标签分类，包括 Python、Java、C++、JavaScript、教程、AI、算法、Rust、游戏等。用户可以按最新、月度、年度、精选等方式浏览项目。")
            p(b, "近期推荐的项目包括：dbx（轻量级跨平台数据库桌面客户端，支持 40+ 种数据库）、whichllm（自动检测本机硬件配置并推荐适合的大模型）、ai-engineering-from-scratch（从零开始学习 AI 工程的完整教程，435 节课、320 小时）。")
            p(b, "其他热门项目包括：FluentFlyout（替换 Windows 默认媒体控制弹窗，采用 Fluent 2 设计）、egos-2000（仅 2000 行代码的教学操作系统）、CodexBar（集中显示 40 多个 AI 工具配额用量的 macOS 工具）。")
            p(b, "还有 dolt（像 Git 一样管理数据的 SQL 数据库）、cheatreader（悬浮在桌面角落的电子书阅读器）、bleachbit（免费开源的磁盘清理工具）、gittype（把代码变成打字游戏的工具）、skills（AI 编码工具技能包）等有趣的开源项目。")
            p(b, "HelloGitHub 还发布月刊，定期推荐精选开源项目。平台由社区维护，接受项目提交，并提供商务合作和友情链接服务。")
            a(b, attrs("href", "https://hellogithub.com/"), "访问 HelloGitHub")
        }
    )
}
