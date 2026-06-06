package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getShellechoprintfechoprintfPost(): Post {
    return Post(
        "shellechoprintfechoprintf",
        "shell的echo命令与printf有什么不同？_echo和printf的区别-CSDN博客",
        "2024-08-10",
        "Shell编程中echo和printf的功能差异，特别是在处理字符串输出和循环遍历字符时的不同表现",
        { b =>
            h2(b, "shell的echo命令与printf有什么不同？")
            p(b, "我们很容易知道的echo和printf的区别在于echo自带回车，而printf需要手动加\\n，但在Shell编程中还有更深层次的区别。")
            h2(b, "for循环遍历字符串的差异")
            p(b, "在学习Shell编程时，for str in 'This is a string'的循环只循环了一次，将整个字符串看成了一个整体。echo输出整个字符串"This is a string"，而printf只输出了第一个词"This"。")
            h2(b, "printf的参数处理机制")
            p(b, "printf使用引用文本或空格分隔的参数。在不使用格式控制字符串(如%d、%s、%f)的情况下，printf只接受第一个参数。printf \"123\" \"456\" \"789\"的结果仅为123，说明printf不接受多余的字段。")
            p(b, "如果不加引号输入printf This is a string，空格被视为分隔符，printf只输出"This"。但加上引号printf 'This is a string'后，整个字符串被看做一个参数，输出正确。")
            h2(b, "echo的参数处理")
            p(b, "echo则不同，echo This is a string和echo \"This is a string\"的结果都是"This is a string"。echo加不加引号都将一次性输出所有字符，将空格视为字符串的一部分。")
            h2(b, "总结")
            p(b, "echo和printf的两个核心区别：1. echo默认自带回车，printf默认不带。2. 不使用格式控制字符串的情况下，printf将空格视为分隔不同字符串的分隔符且只接受第一个参数，因此输出带空格的字符串必须加引号；echo则无论是否加引号都将空格视为字符串的一部分。")
            p(b, "另外需要注意：for循环不能以菜鸟教程中的方法遍历字符串中的字符，教程编写有误。")
            a(b, attrs("href", "https://blog.csdn.net/YNNAD1997/article/details/106875375"), "阅读原文")
        }
    )
}
