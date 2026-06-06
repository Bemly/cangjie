package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCodeskyPost(): Post {
    return Post(
        "codesky",
        "CodeSky 代码之空",
        "2024-02-01",
        "CodeSky 代码之空是一个个人技术博客，作者敖天羽，记录学习过程，涵盖 AI、前端、运维、Go、Python 等技术方向。",
        { b =>
            h2(b, "CodeSky 代码之空")
            p(b, "CodeSky 代码之空是一个个人技术博客，作者敖天羽，随手记录自己的学习过程。博客涵盖 JavaScript、CSS、Go、Python、Linux、PHP、C 等多个技术方向，累计 530 多篇文章。")
            p(b, "博客近期内容聚焦于 AI 浪潮下的开发模式变革。作者分享了在字节跳动工作期间使用 AI Coding 的体验，从最早的代码补全、Copilot 到现在的 SDD 和 AI 全托管开发模式，认为 AI 对程序员的开发方式产生了巨大冲击。")
            p(b, "作者提到，周更博主升级为月更博主，再到年更博主，但坚持不让 AI 介入博客内容更新，保证纯人工写作。文中呼吁大家使用更先进的生产工具改变开发习惯。")
            p(b, "此外，博客还记录了体验豆包手机 24 小时的感受、Agent Platform Self-Host 开源项目对比（Coze Studio vs Dify）、Chrome 端到端网络排查实战、群晖 Gitea + Gitea Actions 部署教程等技术内容。")
            p(b, "博客还分享了 Python 音频去广告和字幕提取、群晖通过 Active Backup for Business 实现服务器快照等实用技术方案。作者对 2025 年研发工具升级的话题也有深入思考，认为大厂员工对新工具的接受度反而不如创业公司员工。")
            a(b, attrs("href", "https://www.codesky.me/"), "访问 CodeSky 代码之空")
        }
    )
}
