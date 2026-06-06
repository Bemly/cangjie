package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEmmetPost(): Post {
    return Post(
        "emmet",
        "一篇文章搞懂Emmet语法规则，让前端编码健步如飞",
        "2024-11-04",
        "介绍Emmet常用语法规则，帮助前端开发人员更快地编写HTML和CSS代码。",
        { b =>
            h2(b, "Emmet简介")
            p(b, "前端人员编写网页代码时可以依靠编辑器的语法提示加快编写速度。大多数编辑器也提供Emmet插件来更快地编写HTML和CSS代码。Emmet的语法规则比较简单易理解，可以极大地提升编码速度，基本上是前端开发人员必备的一项技能。")
            h2(b, "初始化HTML结构")
            p(b, "新建一个HTML文件后，可以使用!加Tab键初始化HTML结构，快速生成完整的HTML5文档模板。")
            h2(b, "id和class选择器")
            p(b, "使用#号生成带有id的元素，例如输入div#main按Tab键会生成带有id=\"main\"的div。使用.号生成带有class的元素，例如div.head会生成class=\"head\"的div。多个类可以继续追加，如div.head.box。两者也可以组合使用，如div#main2.body.box。")
            h2(b, "子节点、上级节点和兄弟节点")
            p(b, "使用>连接两个标签名，后者会成为前者的子元素，例如div>p会生成div包含p的结构。使用^符号可以让后面的元素与前一元素的父级同级，^可以连续使用表示上升多级。使用+符号相连的元素会生成同级元素，如div+p+a会生成三个同级的div、p、a标签。")
            h2(b, "重复生成")
            p(b, "使用*号可以生成多个同样的标签，例如h2*5会生成5个h2标签，ul>li*6会生成包含6个li的ul列表，省去了一个个复制的麻烦。")
            h2(b, "属性设置")
            p(b, "使用方括号[]可以为元素添加任意属性。例如div[name='main']会生成带有name属性的div，a[href=\"www.baidu.com\" name=\"baidu\"]会生成带有href和name属性的a标签。")
            h2(b, "动态编号")
            p(b, "使用$符号可以生成动态递增的序号。$代表一位数字，配合*号使用可以从1递增。例如ul>li.item$*6会生成item1到item6。多个$可以设置位数并补零，如item$$$*6会生成item001到item006。在$后加@-可以实现倒序，加@N可以改变起始基数。")
            h2(b, "文本内容和分组")
            p(b, "元素后面使用{}可以在内部加入文本内容，例如p{一段文本}和a[href=\"www.baidu.com\"]{百度}。使用()可以组合代码块，写较长的Emmet语法时用来分隔，例如div>(ul>li>a)+p。")
            p(b, "以上就是Emmet的核心语法规则，虽然简单但需要多多练习才能熟练运用，从而在日常开发中显著提升编码效率。")
            a(b, attrs("href", "https://juejin.cn/post/7018567571876102151"), "阅读原文")
        }
    )
}
