package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxgrepsedawkOrionOrionPost(): Post {
    return Post(
        "linuxgrepsedawk-orion-orion",
        "Linux：管道命令与文本处理三剑客（grep、sed、awk）",
        "2024-08-11",
        "介绍Linux管道命令以及文本处理三剑客grep、sed、awk的使用方法。",
        { b =>
            h2(b, "管道命令（pipe）介绍")
            p(b, "bash命令执行的时候会输出信息，但有时这些信息必须要经过几次处理之后才能得到我们想要的格式，此时就需要管道命令。管道命令使用的是 | 这个界定符号。管道命令仅能处理前一个命令传来的标准输出信息，对于标准错误信息并没有直接处理能力。")
            p(b, "管道命令主要有两个需要注意的地方：管道命令仅会处理标准输出，对于标准错误会予以忽略；管道命令必须要能够接受来自前一个命令的数据成为标准输入继续处理才行。如果我们强行让标准错误为管道命令所用，那么可以使用 2>&1 将标准错误重定向到标准输出。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/linuxgrepsedawk-orion-orion/pipe-command.avif", "alt", "管道命令处理示意图", "style", "max-width:100%"))
            h2(b, "行选取命令 grep")
            p(b, "grep命令可以一行一行地分析信息，若某行含有我们所需要的信息，则就将该行拿出来。基本语法：grep [-acinv] [--color=auto] '查找字符' filename")
            p(b, "常用选项：-a 将二进制文件以文本文件的方式查找数据；-c 计算找到的次数；-i 忽略大小写；-n 顺便输出行号；-v 反向选择，显示出没有查找字符内容的那些行。")
            raw(b, "<blockquote>范例：last | grep 'root' 可以筛选出包含root的登录记录；last | grep -v 'root' 则排除包含root的记录。</blockquote>")
            h2(b, "行操作命令 sed")
            p(b, "sed命令也是一个管道命令，它可以对特定行进行新增、删除、替换等操作。基本语法：sed [-nefr] [操作]。其中 -n 使用安静模式，-i 直接修改文件内容。")
            p(b, "sed的操作格式为 [n1[,n2]]function，其中function包括：a 新增、c 替换、d 删除、i 插入、p 打印、s 替换（可搭配正则表达式）。")
            raw(b, "<blockquote>范例：cat -n /etc/passwd | sed '2,5d' 删除第2-5行；sed '2a Drink tea?' 在第2行后新增一行；sed -n '5,7p' 仅列出第5-7行。</blockquote>")
            p(b, "sed还可以进行部分数据的查找和替换，格式为 sed 's/要被替换的字符/新的字符/g'。例如通过 ifconfig | grep 'inet' | sed 配合正则表达式可以提取IP地址。")
            p(b, "sed的-i选项可以直接修改文件内容，这在处理大文件时非常有用，比如有一个100万行的文件要修改某些行，使用sed比vim高效得多。")
            h2(b, "字段操作命令 awk")
            p(b, "相较于sed常常对一整行进行操作，awk则倾向于将一行分为多个字段来处理。默认的字段分隔符为空格键或Tab键。awk的内置变量包括：NF 每一行拥有的字段总数，NR 目前处理的是第几行数据，FS 目前的分割字符。")
            raw(b, "<blockquote>范例：last -n 3 | awk '{print $1 \"\\t\" $3}' 取出账号与登录IP，以Tab隔开。</blockquote>")
            p(b, "awk支持条件判断和逻辑运算（>、<、>=、<=、==、!=），还可以使用BEGIN关键词预先设置变量。例如 cat /etc/passwd | awk 'BEGIN {FS=\":\"} $3 < 10 {print $1 \"\\t\" $3}' 可以筛选UID小于10的用户。")
            p(b, "awk还支持格式化输出和计算功能。使用printf可以控制输出格式，变量之间用分号分隔，注意在awk中等于用==表示，而=用于变量赋值。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/linuxgrepsedawk-orion-orion/grep-example.avif", "alt", "grep示例", "style", "max-width:100%"))
            raw(b, "<blockquote>参考：鸟哥的Linux私房菜：基础学习篇（第四版），人民邮电出版社，2018。</blockquote>")
            a(b, attrs("href", "https://www.cnblogs.com/orion-orion/p/17328082.html"), "阅读原文")
        }
    )
}
