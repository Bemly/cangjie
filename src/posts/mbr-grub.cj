package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMbrGrubPost(): Post {
    return Post(
        "mbr-grub",
        "MBR嵌入微型grub，有问题一起讨论(节选)",
        "2021-09-28",
        "讨论将grldr裁剪到22K以内嵌入MBR的过程，探索最必要的基础函数有哪些。",
        { b =>
            p(b, "对grldr的裁剪已经进行了一段时间了，目前大小已经在22K了。还有若干个C函数没有改写成汇编，所以还有一些工作要做。可以从nufans下载grldrtmp文件，用grub4dos的chainloader --force来测试启动它。")
            p(b, "目前裁剪的目的是探索最必要的基础函数有哪些，把可有可无的都删除。")
            h2(b, "裁剪项目清单")
            p(b, "1. 把命令行的编辑删除了，命令的历史也取消了，get_cmdline是用汇编重新编写的。2. 把图形模式去掉了，只有标准的80x25字符模式。3. 有关时钟的函数都删去了。4. 把CHS模式相关的代码都删去了，只留下LBA访问方式。")
            p(b, "5. 把确定内存大小的代码都去掉了。6. 把有关菜单处理的代码全都去掉了，只能进入命令行。7. CDROM的相关代码也全都去掉了，因为从MBR启动的时候不能访问CDROM。8. PXE也去掉了。")
            p(b, "9. fb的代码也去掉了。USB BIOS通常很buggy，所以不抱希望访问USB。10. 去掉了访问4G以上内存空间的代码。11. 去掉了所有其他的命令，只留下一个command命令。12. 文件系统驱动程序只保留了最简单的FAT。")
            p(b, "13. gzip的代码去掉了。14. 加强了磁盘读写函数，假定LBA可以访问64位的扇区号码，访问2T以上的磁盘空间是可能的。15. 保留了文件名的自动补全功能，相当于dir或ls命令。16. 磁盘缓冲的代码保留了。")
            h2(b, "关键改进")
            p(b, "去掉了next_partition函数，增加了list_partitions函数。next_partition函数频繁地访问分区表和各级扩展分区表，是一个设计上的缺陷。list_partitions函数把当前盘的各级分区表信息放在内存缓冲区中，后续的分区枚举就不再访问硬盘了。更改之后还节约了200多个字节的代码。")
            p(b, "后来去掉了cat和map命令，体积缩减到一个磁道（63扇区）以内了。grldr的头部不再是16扇区，而是2个扇区。精简版grldr启动后会执行文件结尾处的命令序列，如果放置 find --set-root /grldr 和 /grldr 两条命令，启动时会自动寻找并启动常规版grldr。")
            a(b, attrs("href", "https://www.cnblogs.com/liuzhaoyzz/archive/2012/06/11/2545411.html"), "阅读原文")
        }
    )
}
