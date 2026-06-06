package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPowerpcSkywindInsideskywindInsidePost(): Post {
    return Post(
        "powerpc-skywind-insideskywind-inside",
        "PowerPC 汇编入门与优化 - Skywind InsideSkywind Inside",
        "2024-09-29",
        "从对比x86入手，介绍PowerPC RISC体系的指令集、常用优化方法和交叉编译环境搭建。",
        { b =>
            h2(b, "背景介绍")
            p(b, "PowerPC于1991年IBM/MOTO/APPLE研制，大量应用于服务器（AIX/AS400系列及苹果系列服务器），家用游戏机（PS3, Wii, XBOX, GameCube），以及嵌入式（仅次于Arm/x86排第三）。PowerPC核心在于开放系统软件标准，其应用范围仅次于x86，是除去x86外最值得开发者了解的体系。")
            h2(b, "PowerPC基础知识")
            p(b, "大部分CPU指令集都可以分为：数据读写、数值计算、流程控制与设备管理四个部分。PPC使用RISC（精简指令集），指令字长都是32bit，一条Intel指令往往可以由多条PPC指令组合表示。Endian一般都是可调的，默认使用BE（Big Endian），同时PPC没有栈，应用程序需要自己实现相关操作。")
            h2(b, "加载32位立即数")
            p(b, "在PPC下，RISC的每条指令都是4个字节定长，只有16bit用来描述立即数。要加载32位立即数需要分两次：使用LIS（立即数载入并左移）和ADDI（立即数加法）。例如：LIS R3, 0x1122 加载并左移16位，然后ADDI R3, R3, 0x3344再加上低16位。")
            h2(b, "子程序调用与递归")
            p(b, "PPC使用LR寄存器（Link Register）来完成子程序调用。bl指令跳转前，下条指令的地址会被保存到LR，执行到blr时会跳转到LR所表示的地址完成返回。虽然PPC没有直接提供栈相关指令，应用程序却常用R1来模拟栈指针，实现多层调用时对LR的记录与恢复。")
            h2(b, "指令优化原则")
            p(b, "1、指令结对原则：在类PPC405/440的系统中，指令被分为加载存储、条件处理、其他操作三类，系统能同时执行两条不属于同一类别的指令。邻接的无依赖计算指令不能同时运行，但整数计算和加载混合却能很好地并行调度。")
            p(b, "2、加载依赖原则：数据从缓存加载到寄存器后需要数个周期才能被使用，这个间隔是优化的关键区间。加载与使用命令之间最少可以插入两条指令进行优化。")
            p(b, "3、缓存优化原则：PowerPC中使用DCBT（Data Cache Block Touch）预取指令，提前告诉CPU将用到哪块内存，CPU提前将该内存读入缓存。如果没有DCBT支持，可以用硬预取方法替代。")
            h2(b, "编译调试")
            p(b, "交叉编译需要下载并重新编译binutils：configure --target=powerpc-linux-eabi。模拟器QEMU最好在Linux环境中使用，支持用户模式模拟，不需要模拟整个PPC操作系统，PPC程序的系统调用会转化为本机Linux的系统调用。")
            a(b, attrs("href", "https://skywind.me/blog/archives/340"), "阅读原文")
        }
    )
}
