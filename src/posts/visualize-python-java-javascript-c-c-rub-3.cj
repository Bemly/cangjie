package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVisualizePythonJavaJavascriptCCRub3Post(): Post {
    return Post(
        "visualize-python-java-javascript-c-c-rub-3",
        "Visualize Python, Java, JavaScript, C, C++, Rub...",
        "2020-02-09",
        "网站主页：Visualize Python, Java, JavaScript, C, C",
        { b =>
            h2(b, "Visualize Python, Java, JavaScript, C, C++, Rub...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.pythontutor.com/visualize.html#mode=display"), "访问原始链接")
        }
    )
}
