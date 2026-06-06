package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBootloaderUBootPost(): Post {
    return Post(
        "bootloader-u-boot",
        "Bootloader(启动引导程序)---＞u-boot_兰天禄的博客-CSDN博客",
        "2021-11-11",
        "Bootloader中文解释为启动引导程序。本文介绍Bootloader的种类归纳、ARM系统启动流程、u-boot的介绍和编译。",
        { b =>
            h2(b, "Bootloader(启动引导程序)---＞u-boot")
            p(b, "Bootloader中文解释为：启动引导程序。针对不同CPU架构有不同种类：X86架构有LILO、GRUB、ntldr等；ARM架构有vivi、armboot等；PPC架构有ppcboot等；可以支持多种架构的有u-boot等。")
            h3(b, "ARM系统的启动流程")
            p(b, "以s5p6818开发板为例：芯片选择启动iROM设备，iROM选择启动下一阶段引导程序所在设备，iROM启动UBOOT第一阶段BL1，UBOOT第一阶段启动UBOOT第二阶段BL2，UBOOT第二阶段启动内核。")
            p(b, "嵌入式Bootloader的启动过程可以分为单阶段和多阶段两种。通常多阶段的Bootloader能够提供更复杂的功能及更好的可读性和移植性。从外部存储设备上启动的Bootloader大多是两阶段的启动过程。")
            h3(b, "内核传参过程")
            p(b, "引导程序将要传递给系统的信息给内核后就可以释放了，系统启动后就不需要Bootloader了。传递给内核的参数由多个结构体组成，各结构体放在一段连续的内存空间，起始地址为0x4000_0100，每一个结构体代表一条信息并首尾相连。")
            h3(b, "u-boot的介绍")
            p(b, "u-boot最初是由PPCBoot发展而来的，目前已成为Armboot和PPCboot的替代品。主要支持操作系统包括Linux、NetBSD、VxWorks、QNX、RTEMS、ARTOS、LynxOS等。主要支持处理器架构包括PowerPC、MIPS、x86、ARM、NIOS、XScale等。")
            h3(b, "u-boot的编译")
            p(b, "编译步骤：先执行make distclean清除编译结果，再执行make x6818_config配置对应平台，最后执行make编译，生成ubootpak.bin即可使用。编译内核时还需要将tools下面生成的mkimage工具拷贝到/bin目录下。")
            h3(b, "u-boot的启动过程")
            p(b, "u-boot为标准的两阶段启动bootloader。第一阶段为汇编代码(2ndboot)，主要初始化CPU硬件体系结构：禁用看门狗、初始化系统时钟、设置异常向量表、动态内存控制器初始化、初始化UART、从NAND/NOR/SD卡中复制代码到DRAM、跳转进入第二阶段。")
            p(b, "第二阶段为C程序代码(u-boot.bin)，主要提供多种复杂命令并引导操作系统：汇编阶段核心初始化、初始化GPIO、初始化MMC等存储设备、MMU初始化、各类通信设备驱动初始化、环境变量和参数的加载及初始化、倒计时监听串口、启动内核。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_43288201/article/details/107496580"), "阅读原文")
        }
    )
}
