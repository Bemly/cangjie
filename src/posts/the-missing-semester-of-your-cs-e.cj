package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheMissingSemesterOfYourCsEPost(): Post {
    return Post(
        "the-missing-semester-of-your-cs-e",
        "计算机教育中缺失的一课 · the missing semester of your cs e...",
        "2024-10-21",
        "MIT开设的课程，专注于讲授命令行、文本编辑器、版本控制等计算机科学中常被忽略的实用工具技能。",
        { b =>
            h2(b, "课程简介")
            p(b, "大学里的计算机课程通常专注于讲授从操作系统到机器学习这些学院派的课程或主题，而对于如何精通工具这一主题则往往会留给学生自行探索。在这个系列课程中，讲授命令行、强大的文本编辑器的使用、使用版本控制系统提供的多种特性等内容。")
            p(b, "学生在受教育阶段就会和这些工具朝夕相处，在职业生涯中更是这样。因此花时间打磨使用这些工具的能力并能够最终熟练地、流畅地使用它们是非常有必要的。精通这些工具不仅可以帮助更快地完成任务，并且可以帮助解决在之前看来似乎无比复杂的问题。")
            h2(b, "AI工具的融入")
            p(b, "如今AI增强工具和工作流程的引入正在使软件工程领域发生翻天覆地的变化。如果能够使用得当，这些AI工具通常可以为计算机科学从业者带来显著的好处。由于AI是跨领域的通用技术，因此并没有独立的AI讲座，而是将最新的AI工具和技术直接融入到每个讲座中。")
            h2(b, "2026年课程安排")
            p(b, "课程包括：课程概览+Shell入门、命令行环境、开发环境与工具、Debugging and Profiling、Version Control and Git、Packaging and Shipping Code、Agentic Coding、不止于代码、代码质量等主题。")
            h2(b, "2020年课程安排")
            p(b, "课程包括：课程概览与shell、Shell工具和脚本、编辑器（Vim）、数据整理、命令行环境、版本控制（Git）、调试及性能分析、元编程、安全和密码学、大杂烩、提问与回答等主题。")
            h2(b, "翻译与社区")
            p(b, "本课程已被翻译成多种语言，包括简体中文、繁体中文、阿拉伯语、孟加拉语、德语、意大利语、日语、韩语、波斯语、葡萄牙语、俄语、西班牙语、瑞典语、泰语、土耳其语、越南语等。课程由MIT的Anish、Jon和Jose讲授，讲座视频可在YouTube上找到。")
            a(b, attrs("href", "https://missing-semester-cn.github.io/"), "阅读原文")
        }
    )
}
