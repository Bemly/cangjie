package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEp48BUpPythonPost(): Post {
    return Post(
        "ep-48-b-up-python",
        "Ep 48. 专访高天：为了当好 B站 up主，我成为了 Python 核心开发者 - 捕蛇者说",
        "2024-08-24",
        "原文待补充：Ep 48. 专访高天：为了当好 B站 up主，我成为了 Python 核心开发",
        { b =>
            h2(b, "Ep 48. 专访高天：为了当好 B站 up主，我成为了 Python 核心开发者 - 捕蛇者说")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://pythonhunter.org/episodes/ep48"), "阅读原文")
        }
    )
}
