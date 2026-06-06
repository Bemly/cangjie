package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascriptmarkedjsmarkdownhtmlShmilyPost(): Post {
    return Post(
        "javascriptmarkedjsmarkdownhtml-shmily",
        "JavaScript使用marked.js在线Markdown转HTML",
        "2021-05-01",
        "marked.js是一个可以在线转码Markdown的JavaScript编写的库，可以非常方便的在线编译Markdown代码为HTML并直接显示。",
        { b =>
            p(b, "marked.js是一个可以在线转码Markdown的JavaScript编写的库。可以非常方便的在线编译Markdown代码为HTML并直接显示，并且支持完全的自定义各种格式。")
            p(b, "项目地址：https://github.com/chjj/marked")
            h2(b, "安装")
            p(b, "使用npm则可以直接安装：npm install marked --save")
            h2(b, "使用")
            p(b, "简单的使用示例：var marked = require('marked'); console.log(marked('I am using __markdown__.')); 输出 <p>I am using <strong>markdown</strong>.</p>")
            p(b, "使用默认值设置选项：可以设置 gfm（GitHub风格Markdown）、tables（表格支持）、breaks（换行符支持）、sanitize（HTML转义）、smartLists（智能列表）等选项。")
            p(b, "在HTML页面中使用：引入 marked.js 脚本后，通过 document.getElementById('content').innerHTML = marked('# Marked in browser') 即可渲染Markdown为HTML。")
            h2(b, "方法解析")
            p(b, "marked(markdownString [,options] [,callback])：markdownString为string类型要编译的markdown源码；options为object类型选项；callback为异步解析完毕时调用的回调函数。")
            h2(b, "选项配置")
            p(b, "highlight选项：function类型，代码高亮的回调函数。支持pygmentize-bundled异步高亮和highlight.js同步高亮两种方式。")
            p(b, "renderer选项：object类型，默认为new Renderer()。允许你使用自定义样式进行渲染。例如可以重写heading渲染方法，添加嵌入式锚标签。")
            p(b, "其他常用选项包括：gfm设为true启用GitHub风格Markdown；tables设为true支持表格；breaks设为true支持GFM换行符；sanitize设为true对输出HTML进行转义。")
            a(b, attrs("href", "https://www.jianshu.com/p/d182ea991609"), "阅读原文")
        }
    )
}
