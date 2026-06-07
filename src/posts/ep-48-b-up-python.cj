package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEp48BUpPythonPost(): Post {
    return Post(
        "ep-48-b-up-python",
        "Ep 48. 专访高天：为了当好 B站 up主，我成为了 Python 核心开发者",
        "2024-08-24",
        "捕蛇者说播客第二次请到高天，聊了聊成为 Python 核心开发者以及在 B站做 up 主的经历和感悟。",
        { b =>
            p(b, "本期节目是捕蛇者说播客第 48 期，第二次请到了高天，和他聊了聊成为 Python 核心开发者以及在 B站做 up 主的经历和感悟。主播包括 Adam Wen、laixintao 和 laike9m。节目时长 1 小时 37 分钟。")
            h2(b, "Python 开发")
            p(b, "节目中高天分享了成为 Python 核心开发者的历程，对 Python 语言发展的看法，以及一个比较推崇的 Python 编程技巧或最佳实践。相关的项目和工具包括 pdb（Python Debugger）、Faster CPython 项目等。")
            h2(b, "技术内容创作")
            p(b, "高天聊了是什么让他尝试开始在 B站分享技术内容，视频制作流程和内容选择策略，如何平衡技术深度和受众理解度，以及知乎问答和知识星球运营经验，还有技术直播的挑战和技巧。")
            h2(b, "工作与生活平衡")
            p(b, "节目还讨论了在科技公司工作的日常，如何管理时间兼顾工作、创作和个人生活，以及对程序员职业倦怠的看法和应对方法。")
            h2(b, "相关链接")
            p(b, "节目中提到的资源包括：py-spy（Python 程序采样分析器）、Scalene（高性能 CPU/GPU/内存分析器）、coverage.py、SlipCover（近零开销 Python 代码覆盖率工具）、Astral（下一代 Python 工具链）、contextvars 等。")
            p(b, "还提到了 PEP 703 即将被正式接受移除 GIL 的相关讨论，以及 Joe Armstrong 关于优化的名言：先让它工作，再让它变美，如果真的需要的话再让它变快。90% 的情况下，如果你让它变美了，它就已经很快了。")
            a(b, attrs("href", "https://pythonhunter.org/episodes/ep48"), "收听节目")
        }
    )
}
