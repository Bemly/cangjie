package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux16MsdoGptPost(): Post {
    return Post(
        "linux16-msdosgpt",
        "Linux学习16-磁盘分区MSDOS与GPT的区别",
        "2021-10-02",
        "详细介绍传统的MBR分区方式与现代GPT分区方式的区别，包括硬盘结构、MSDOS结构和GPT分区表。",
        { b =>
            p(b, "与支持最大卷为2TB并且每个磁盘最多有4个主分区的MBR磁盘分区样式相比，GPT磁盘分区样式支持最大卷128EB并且每磁盘的分区数没有上限，只受到操作系统限制。GPT分区磁盘有备份分区表来提高分区数据结构的完整性。")
            h2(b, "1. 硬盘结构")
            p(b, "设备类型分为块设备和字符设备。块设备存取单位为块，通常为随机访问，有缓存；字符设备存取单位为字符，通常为顺序访问，没有缓存。")
            p(b, "机械硬盘结构包括：磁道(track)、扇区(sector，每个扇区512byte)、磁头(head)、柱面(cylinder)。早期采用CHS寻址（最大8GB），现代采用LBA寻址（最大128PB）。")
            h2(b, "2. MSDOS（MBR）分区")
            p(b, "MBR放在第一个扇区（512bytes），包含两部分：主要启动记录区（MBR）446bytes用于安装开机管理程序，分区表（partition table）64bytes记录硬盘分区状态。")
            p(b, "由于分区表仅有64bytes容量，每个分区表项需要占用16bytes，因此最多仅能有四组记录区。这四个分区被称为主要(primary)或延伸(extended)分区，利用延伸分区可以划分更多的逻辑分区(logical partition)。")
            p(b, "MBR结构包括：主引导程序（负责装载并运行系统引导程序）、出错信息数据区、分区表DPT（含4个分区项，每个16字节）、结束标志字55AA。")
            h2(b, "3. GPT分区")
            p(b, "GPT分区表支持最大卷128EB，每磁盘分区数量几乎不受限。IA-64版Windows限制最多有128个分区，这也是EFI标准规定的分区表的最小尺寸。")
            p(b, "与MBR分区的磁盘不同，GPT的平台操作数据位于分区而不是隐藏扇区。GPT分区磁盘还有备份分区表来提高数据结构的完整性。")
            a(b, attrs("href", "https://blog.csdn.net/free050463/article/details/81876521"), "阅读原文")
        }
    )
}
