package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxTtyptsLinuxPost(): Post {
    return Post(
        "linux-ttypts-linux",
        "Linux TTY/PTS概述 - Linux程序员 - SegmentFault 思否",
        "2024-08-10",
        "从TTY历史到内核TTY子系统架构，详解TTY设备、PTS、前台进程组及键盘显示器直连和SSH远程访问的工作原理",
        { b =>
            h2(b, "TTY历史")
            p(b, "在计算机出现以前，人们使用teletype设备相互传递信息。两个teletype之间用线连接，一端敲键盘时数据会发送到另一端。计算机支持多任务后，人们将teletype连到计算机上作为终端操作计算机。")
            p(b, "连接方式为：Terminal -> Modem -> Physical Line -> Modem -> UART -> Computer。UART将teletype的信号转换成计算机能识别的信号。")
            h2(b, "内核TTY子系统")
            p(b, "计算机为支持teletype设计了TTY子系统。UART driver对接外部UART设备，Line discipline对输入输出做处理，TTY driver处理各种终端设备，用户空间进程通过TTY driver与终端交互。")
            h2(b, "TTY设备")
            p(b, "对于每个终端，TTY driver创建一个TTY设备与之对应。设备名称如ttyS0是因为大部分终端通过串行连接。每个tty设备可能有不同的配置，如delete键的行为可能不同，这就是使用模拟终端时需要个性化配置的原因。")
            p(b, "随着teletype设备消失，每台机器都可以是其它机器的终端，远程操作通过SSH实现。但内核TTY驱动架构不变，出现了各种终端模拟软件如VT100、VT220、XTerm等。")
            h2(b, "程序如何和TTY打交道")
            p(b, "当前bash关联到/dev/pts/1，进程的stdin(0u)、stdout(1u)、stderr(2u)都绑定到该TTY上。tty可以理解为管道(pipe)，一端写的内容可从另一端读取。tty有重要属性Foreground process group，记录当前前端进程组。")
            p(b, "pts/1收到输入后检查前端进程组，将输入放到leader进程的输入缓存。前端进程往tty写数据时输出到output设备。Shell负责更新前端进程组的变化。写后台程序时应将stdin/stdout/stderr重定向。")
            h2(b, "TTY是如何被创建的")
            p(b, "键盘显示器直连时，键盘和显示器与内核中的终端模拟器相连，模拟器决定创建多少tty。按下Ctrl+Alt+F1时模拟器激活tty1，键盘输入转发到tty1，tty1输出转发到显示器。首次打开tty时会启动login进程与之绑定。")
            h2(b, "SSH远程访问")
            p(b, "SSH连接时，ssh server fork新进程，创建ptmx和pts设备。键盘输入通过SSH协议传到ssh server，server写入ptmx，数据通过pts设备到达shell进程。shell的输出通过pts写入ptmx，再通过ssh server传回客户端显示器。")
            p(b, "pts(Pseudo Terminal Slave)是伪终端从设备，与ptmx(Pseudo Terminal Master)配对使用，模拟了传统TTY设备的行为，使得SSH等远程连接可以像本地终端一样工作。")
            a(b, attrs("href", "https://segmentfault.com/a/1190000009082089"), "阅读原文")
        }
    )
}
