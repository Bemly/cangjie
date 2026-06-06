package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxEchoprintfPost(): Post {
    return Post(
        "linux-echoprintf",
        "Linux常用命令--echo与printf",
        "2024-08-10",
        "Shell脚本中echo和printf命令的详细用法，包括参数选项、转义字符、颜色输出和格式化",
        { b =>
            h2(b, "摘要")
            p(b, "在编写shell脚本时，echo和printf是两个常用的命令，用于输出信息到标准输出设备。深入理解它们的使用方式和内部机制对于编写高效、可读性强的脚本至关重要。")
            h2(b, "echo 命令")
            p(b, "echo命令的基本语法为：echo [选项] [字符串或变量]。选项包括：-n不换行输出，-e解释转义字符，-E禁止解释转义字符。常见转义字符包括\\n(换行)、\\t(制表符)等。")
            p(b, "echo可以打印文本消息、带环境变量的消息、不带尾随换行符的消息(-n)，也可以将消息追加到文件中(>>)。使用-e选项可以启用反斜杠转义的解释，如echo -e \"Column 1\\tColumn 2\"。")
            h2(b, "echo输出颜色化文本")
            p(b, "使用echo -e配合ANSI转义序列可以输出彩色文本。格式为echo -e \"\\e[1;31mError:\\e[0m Something went wrong.\"，其中\\e[1;31m控制文本颜色和样式，\\e[0m重置为默认值。")
            p(b, "颜色代码：30黑色、31红色、32绿色、33黄色、34蓝色、35紫色、36青色、37白色。样式代码：0重置、1粗体、2暗色、3斜体、4下划线、5闪烁、7反显、8隐藏。数字可以单独使用也可以用分号组合。")
            h2(b, "printf 命令")
            p(b, "printf命令的基本语法为：printf [格式化字符串] [参数]。与echo不同，printf不会自动添加换行符，需要手动添加\\n。printf使用格式化字符串来控制输出格式。")
            h2(b, "echo 与 printf 的比较")
            p(b, "echo使用简单，自动添加换行符，适合简单的文本输出。printf功能更强大，支持格式化输出，适合需要精确控制输出格式的场景。printf的格式化能力使其在处理表格数据、对齐输出等方面更有优势。")
            p(b, "两者都可以使用转义字符和颜色控制。在选择使用哪个命令时，简单输出用echo，需要格式化控制时用printf。")
            a(b, attrs("href", "https://blog.hanqunfeng.com/2024/02/28/linux-command13-echo-printf/"), "阅读原文")
        }
    )
}
