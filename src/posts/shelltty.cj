package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getShellttyPost(): Post {
    return Post(
        "shelltty",
        "命令行界面、终端、Shell、TTY，傻傻分不清楚？ - 腾讯云开发者社区-腾讯云",
        "2024-08-10",
        "详解CLI、终端、Shell、TTY的概念区别，从大型机时代的终端到现代终端模拟器的发展历程",
        { b =>
            h2(b, "太长不看")
            p(b, "命令行界面(CLI)=使用文本命令进行交互的用户界面。终端(Terminal)=TTY=文本输入/输出环境。控制台(Console)=一种特殊的终端。Shell=命令行解释器，执行用户输入的命令并返回结果。")
            h2(b, "什么是命令行界面？")
            p(b, "命令行界面(CLI)是在图形用户界面普及之前使用最广泛的用户界面，用户通过键盘输入指令，计算机接收指令后执行。在GUI普及的今天，命令行操作因效率优势依然被广泛使用。")
            h2(b, "终端——人与机器交互的接口")
            p(b, "终端是用于让用户输入数据至计算机以及显示计算结果的设备，本身并不提供运算处理功能。在大型机时代，操作计算机的人通过终端设备与计算机交互。")
            h2(b, "历史上的终端")
            p(b, "早期终端一般是电传打字机(Teletype)。Unix创始人Ken Thompson和Dennis Ritchie找到了ASR-33电传打字机作为终端，它既有键盘又能打印，价格低廉，创造了第一个多用户操作系统Unix。")
            h2(b, "控制台(Console)")
            p(b, "控制台是与计算机主机一体的特殊终端，用于管理主机，只能给系统管理员使用。随着个人计算机普及，Console与Terminal的概念已逐渐模糊，现在基本被看作同义词。")
            h2(b, "字符终端与图形终端")
            p(b, "字符终端只能接收和显示文本信息，分为哑终端和智能终端。DEC公司在1978年制造的VT100是第一批支持ANSI转义序列的智能终端，成为字符终端事实上的标准。图形终端可以显示图形图像，但现在已被全功能显示器取代。")
            h2(b, "终端模拟器(Terminal Emulator)")
            p(b, "现代使用终端模拟器程序来模拟传统终端行为：捕获键盘输入、发送给命令行程序、拿到输出结果、调用图形接口渲染到显示器。常见的有gnome-terminal、Konsole、iTerm2等。")
            h2(b, "TTY是什么？")
            p(b, "电传打字机(Teletypewriter)的缩写就是tty。Unix为支持多终端设计了tty子系统，将硬件设备抽象为/dev/tty*的设备文件。随着发展，tty设备就是终端设备，终端设备就是tty设备。衍生出的pty、ptmx、pts等概念用于伪终端。")
            h2(b, "Shell——提供用户界面的程序")
            p(b, "Shell接受用户输入的命令，帮我们与内核沟通完成任务。Shell分为命令行Shell和图形Shell。常见命令行Shell有sh、bash、zsh、fish、cmd.exe和PowerShell。")
            h2(b, "Shell与终端的分工")
            p(b, "终端负责接收用户输入并展示Shell返回的结果，Shell从终端获取命令解析后交给内核执行。终端将键盘输入转换为控制序列，Shell解析执行这些序列。翻页查看历史输出是终端的功能，命令提示符和行编辑是Shell的功能。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/news/304629"), "阅读原文")
        }
    )
}
