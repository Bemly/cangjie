package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJqueryattrpropTinywanPost(): Post {
    return Post(
        "jqueryattrprop-tinywan",
        "jQuery中attr和prop的区别 - Tinywan - 博客园",
        "2024-08-18",
        "详解 jQuery 中 attr() 和 prop() 方法的区别：固有属性用 prop，自定义属性用 attr。",
        { b =>
            h2(b, "Attribute 与 Property 的区别")
            p(b, "attribute（特性）是我们赋予某个事物的特质或对象，是通过设置 HTML 标签而给之赋予的特性。property（属性）是早已存在的不需要外界赋予的特质，是 DOM 对象自身就拥有的属性。")
            h2(b, "何时用 prop，何时用 attr")
            p(b, "在高版本的 jQuery 引入 prop 方法后，选择使用哪个方法的原则很简单：对于 HTML 元素本身就带有的固有属性，在处理时使用 prop 方法；对于 HTML 元素我们自己自定义的 DOM 属性，在处理时使用 attr 方法。")
            h2(b, "固有属性示例")
            p(b, "例如 <a href=\"http://www.baidu.com\" target=\"_self\" class=\"btn\">百度</a> 这个例子里，<a> 元素的 DOM 属性有 href、target 和 class，这些属性就是 <a> 元素本身就带有的属性，是 W3C 标准里包含的属性，在 IDE 里能够智能提示出，这些就叫做固有属性。处理这些属性时建议使用 prop 方法。")
            h2(b, "自定义属性示例")
            p(b, "例如 <a href=\"#\" id=\"link1\" action=\"delete\">删除</a> 这个例子里，href 和 id 是固有属性，而 action 属性是我们自己自定义上去的，<a> 元素本身没有这个属性。这种就是自定义的 DOM 属性，处理时建议使用 attr 方法。使用 prop 方法取值和设置属性值时都会返回 undefined。")
            h2(b, "checkbox 的 checked 属性")
            p(b, "像 checkbox、radio 和 select 这样的元素，选中属性对应 checked 和 selected，这些属于固有属性，需要使用 prop 方法去操作才能获得正确的结果。$(\"#chk1\").prop(\"checked\") 返回 false，$(\"#chk2\").prop(\"checked\") 返回 true。如果使用 attr 方法，$(\"#chk1\").attr(\"checked\") 返回 undefined，$(\"#chk2\").attr(\"checked\") 返回 \"checked\"。")
            h2(b, "实际案例：多级联动复选框")
            p(b, "在一个多级联动的复选框场景中，level=1 表示项目层，level=2 表示模块层，level=3 表示操作层。当选中某个复选框时，需要联动选中其下级的所有复选框，并向上追溯选中上级。代码中 $(this).prop('checked') 判断固有属性 checked 是否被选中，$(this).attr('pid') 获取自定义属性 pid 的值，$(this).attr('level') 获取自定义属性 level 的值。这体现了在同一个场景中 attr 和 prop 的混合使用。")
            h2(b, "总结")
            p(b, "attr() 方法操作的是 HTML 属性（attribute），返回的是字符串；prop() 方法操作的是 DOM 属性（property），返回的是原始类型。对于 checked、selected、disabled 等布尔类型的固有属性，应始终使用 prop() 方法。对于自定义的 HTML 属性如 data-* 或自己添加的属性，应使用 attr() 方法。")
            a(b, attrs("href", "https://www.cnblogs.com/tinywan/p/5852630.html"), "阅读原文")
        }
    )
}
