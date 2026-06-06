package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVisualizePythonJavaJavascriptCCRubPost(): Post {
    return Post(
        "visualize-python-java-javascript-c-c-rub",
        "Visualize Python, Java, JavaScript, C, C++, Rub...",
        "2021-01-22",
        "Python Tutor是一个在线代码可视化工具，支持Python、Java、C、C++和JavaScript的逐步执行可视化，帮助理解代码运行过程。",
        { b =>
            h2(b, "Visualize Python, Java, JavaScript, C, C++ Code")
            p(b, "Python Tutor是唯一一个可以让你逐步调试代码并获得个性化AI辅导的工具。它模拟了编程入门课教师在黑板上画图的方式，将代码执行过程可视化。")
            p(b, "教师将其作为教学工具使用，学生则用它来直观地理解代码示例并交互式地调试编程作业。用户可以在所有执行步骤中前进和后退导航，可视化内容会随之匹配每一步的栈和堆的运行时状态。")
            p(b, "尽管名字叫Python Tutor，它也是一个广泛使用的Java可视化工具，帮助学生理解和调试代码。它可视化了入门大学课程、高中AP计算机科学和中级Java编程中教授的大部分面向对象编程概念。")
            p(b, "它也是C和C++的可视化工具，使用Valgrind执行内存安全的运行时数据结构遍历，能够精确可视化指针、未初始化内存、越界错误、嵌套数组/结构体/联合体、类型双关和位操作等关键概念。")
            p(b, "同时也支持JavaScript执行的可视化，但不支持进行DOM操作的Web前端代码。")
            a(b, attrs("href", "http://www.pythontutor.com/visualize.html#mode=display"), "访问原始链接")
        }
    )
}
