package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGrubPost(): Post {
    return Post(
        "grub",
        "GRUB简单入门教程",
        "2021-09-27",
        "GRUB简单入门教程，介绍多重操作系统引导管理器GRUB的基本概念、安装方法和配置文件menu.lst的写法。",
        { b =>
            h2(b, "一、什么是多重操作系统引导管理器，什么是GRUB")
            p(b, "系统启动引导管理器，是在计算机启动后运行的第一个程序，他是用来负责加载、传输控制到操作系统的内核，一旦把内核挂载，系统引导管理器的任务就算完成退出，系统引导的其它部份，比如系统的初始化及启动过程则完全由内核来控制完成。")
            p(b, "在X86架构的机器中，Linux、BSD或其它Unix类的操作系统中GRUB、LILO是大家最为常用，应该说是主流。Windows也有类似的工具NTLOADER。比如我们在机器中安装了Windows 98后，我们再安装一个Windows XP，在机器启动的会有一个菜单让我们选择进入是进入Windows 98还是进入Windows XP。NTLOADER就是一个多系统启动引导管理器。")
            h2(b, "什么是GRUB")
            p(b, "GNU GRUB 是一个多重操作系统启动管理器。GNU GRUB 是由GRUB（GRand Unified Bootloader）派生而来。GRUB 最初由Erich Stefan Boleyn设计和应用。")
            p(b, "基于在X86架构的CPU而开发操作系统，系统引导管理器不仅仅有GRUB，而且也有LILO，但对于多重系统引导管理器，你只能选择其一而用，不能两个同时使用。目前这两个多重系统引导管理器是大家最常用的，也是主流Linux发行版所采用的。")
            h2(b, "二、GRUB软件包版本选择和安装")
            p(b, "GRUB不但有Linux版本，也有Windows版本。几乎所有的Linux主流发行版都有打包GRUB，如果您安装了Linux，并且在开机后出现GRUB字样的，证明您已经安装了GRUB，而无需再次安装。")
            p(b, "对于RPM包管理机制的系统，可以通过命令 rpm -ivh grub*.rpm 来安装。也可以通过源码包安装：tar zxvf grub*.tar.gz 解压后执行 ./configure;make;make install。")
            p(b, "确认您是否成功安装了GRUB，您可以测试是否有 grub 和 grub-install 两个命令。如果您不能找到这两个命令，可能您的可执行程序的路径没有设置。")
            h2(b, "三、在Linux中GRUB的配置和写入硬盘MBR")
            p(b, "grub-install 命令用于把GRUB软件包中的一些文件复制到 /boot/grub 中。首先运行 fdisk -l 来确认硬盘的标识，然后使用 grub-install /dev/hda 命令安装。")
            p(b, "值得注意的是如果您有一个/boot分区，应该用如下办法安装：grub-install --root-directory=/boot /dev/hda")
            p(b, "在Linux中，GRUB软件包的安装及在配置过程中安装grub到 /boot 中还是不够的，还要把GRUB写入MBR才行。有时我们重新安装了Windows，Windows会把MBR重写，这样GRUB就消失了。")
            h2(b, "四、GRUB的配置文件menu.lst的写法")
            p(b, "menu.lst位于/boot/grub目录中，也就是/boot/grub/menu.lst文件。如果没有配置menu.lst，无论是Linux版本的GRUB还是WINGRUB，都会有命令行可用，通过命令行是一样能把操作系统引导起来的。")
            p(b, "在grub命令行中，使用 find /boot/grub/stage1 可以找到/boot所在的分区，然后使用 root (hd0,6) 和 setup (hd0) 将GRUB写到MBR上。")
            a(b, attrs("href", "https://blog.csdn.net/liu5320102/article/details/54846432"), "阅读原文")
        }
    )
}
