package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCliTerminalshellttyPPost(): Post {
    return Post(
        "cli-terminalshelltty-p",
        "命令行界面 (CLI)、终端 (Terminal)、Shell、TTY，傻傻分不清楚？ - P...",
        "2024-08-10",
        "详细解释CLI、终端、Shell、TTY的概念区别，从计算机历史到现代终端模拟器的发展",
        { b =>
            h2(b, "太长不看")
            p(b, "命令行界面(CLI)是使用文本命令进行交互的用户界面。终端(Terminal)即TTY，是文本输入/输出环境。控制台(Console)是一种特殊的终端。Shell是命令行解释器，执行用户输入的命令并返回结果。")
            h2(b, "什么是命令行界面？")
            p(b, "命令行界面(Command-line Interface)是在图形用户界面普及之前使用最广泛的用户界面，用户通过键盘输入指令，计算机接收指令后执行。在GUI普及的今天，命令行操作因效率优势依然被开发者和系统管理员广泛使用。")
            h2(b, "终端——人与机器交互的接口")
            p(b, "终端(Terminal)是用于让用户输入数据至计算机以及显示计算结果的设备，本身并不提供运算处理功能。在大型机时代，操作计算机的人通过终端设备与计算机交互。")
            h2(b, "历史上的终端")
            p(b, "早期终端一般是电传打字机(Teletype)。Unix创始人Ken Thompson和Dennis Ritchie找到了ASR-33电传打字机作为终端，它既有键盘又能打印，价格低廉，创造了第一个多用户操作系统Unix。")
            h2(b, "控制台(Console)")
            p(b, "控制台是与计算机主机一体的特殊终端，用于管理主机，只能给系统管理员使用，权限比普通终端更大。一台计算机上一般只有一个控制台，但可以连接很多终端。随着个人计算机普及，Console与Terminal的概念已逐渐模糊，现在基本被看作同义词。")
            h2(b, "终端模拟器(Terminal Emulator)")
            p(b, "现代没有专门的终端硬件，取而代之的是终端模拟器程序。它会假装成传统终端设备与命令行程序交互，捕获键盘输入、发送给命令行程序、拿到输出结果、调用图形接口渲染到显示器。常见的有gnome-terminal、Konsole、iTerm2等。")
            h2(b, "TTY是什么？")
            p(b, "TTY就是终端的统称。电传打字机(Teletypewriter)的缩写就是tty。Unix为支持多终端设计了tty子系统，将硬件设备抽象为/dev/tty*的设备文件。虽然终端设备早已不限于电传打字机，但tty这个名称保留了下来，现在tty设备就是终端设备。")
            h2(b, "Shell——提供用户界面的程序")
            p(b, "Shell接受用户输入的命令，帮我们与内核沟通，让内核完成任务。Shell提供用户操作系统的入口，常见命令行Shell有sh、bash、zsh、fish、cmd.exe和PowerShell等。")
            h2(b, "Shell与终端的分工")
            p(b, "终端负责接收用户输入并展示Shell返回的结果。Shell从终端获取命令，解析后交给内核执行。终端将键盘输入转换为控制序列(如左方向键转为^[[D)，Shell解析执行这些序列。Shell发出颜色控制等指令，终端照做显示。翻页查看历史输出是终端的功能，命令提示符和行编辑则是Shell的功能。")
            a(b, attrs("href", "https://prinsss.github.io/the-difference-between-cli-terminal-shell-tty/"), "阅读原文")
        }
    )
}
