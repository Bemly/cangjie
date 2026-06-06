package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVisualizePythonJavaJavascriptCCRub2Post(): Post {
    return Post(
        "visualize-python-java-javascript-c-c-rub-2",
        "Visualize Python, Java, JavaScript, C, C++, Rub...",
        "2021-01-22",
        "网站主页：Visualize Python, Java, JavaScript, C, C",
        { b =>
            h2(b, "Visualize Python, Java, JavaScript, C, C++, Rub...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.pythontutor.com/visualize.html#mode=display"), "访问原始链接")
        }
    )
}
