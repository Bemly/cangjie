package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getQemuKvmPost(): Post {
    return Post(
        "qemu-kvm",
        "QEMU-KVM基本原理 - 疯一样的狼人 - 博客园",
        "2024-08-09",
        "虚拟化技术简介及QEMU-KVM基本原理，包括半虚拟化、全虚拟化、KVM架构和Libvirt",
        { b =>
            h2(b, "一、虚拟化技术简介")
            p(b, "虚拟化技术是在一个物理机（宿主机）上安装一个操作系统，操作系统上安装虚拟化软件，在虚拟化软件上创建出多个虚拟机。虚拟机发起系统调用等特权指令时会被虚拟化软件接收处理，再交由宿主机实现。")
            h2(b, "虚拟化模式")
            p(b, "x86架构CPU提供Ring0-Ring3四个运行级别。操作系统内核运行在最高权限Ring0，应用程序运行在最低权限Ring3。虚拟机不能与宿主机操作系统同时运行在Ring0，因此需要虚拟机管理程序(VMM)来解决这一问题。")
            p(b, "半虚拟化：修改虚拟机操作系统内核，替换不能虚拟化的指令，通过超级调用(hypercall)直接与hypervisor通讯。性能好但修改内核难度大，且只能虚拟化Linux。")
            p(b, "基于二进制翻译的全虚拟化：将虚拟机操作系统放在Ring1运行，执行特权指令时触发异常，VMM捕获异常做翻译模拟。性能损耗非常大。")
            p(b, "硬件辅助的全虚拟化：CPU具有root和non-root两种操作模式，VMM运行在root模式Ring0，虚拟机运行在non-root模式Ring0。免去了异常捕获翻译的过程，是未来发展趋势。")
            h2(b, "二、QEMU-KVM基本原理")
            p(b, "QEMU(Quick Emulator)是纯软件虚拟化系统，包含CPU虚拟化、内存虚拟化及网卡、显卡、硬盘等虚拟设备模拟。通过动态二进制转换模拟CPU，但所有指令都需翻译，性能较差。")
            p(b, "KVM(Kernel-based Virtual Machine)是基于Linux内核的开源虚拟化方案，从Linux kernel 2.6.20开始引入。KVM依赖硬件辅助虚拟化技术，在Linux内核基础上添加虚拟机管理模块，重用进程调度、内存管理、IO管理等成熟机制，只提供CPU和内存管理的虚拟化。")
            h2(b, "QEMU-KVM架构")
            p(b, "QEMU-KVM属于硬件辅助全虚拟化技术。一个KVM虚拟机就是一个QEMU-KVM进程，CPU作为线程运行在进程上下文中，内存则是进程地址空间的一部分。KVM不执行硬件模拟，IO设备由QEMU-KVM模拟。KVM向上层提供/dev/kvm字符设备接口，通过ioctl控制。")
            h2(b, "运行流程")
            p(b, "Qemu-kvm通过ioctl创建VM和vCPU，KVM内核模块初始化相关数据结构。运行vCPU时执行VMLAUNCH指令通过VM-Entry进入虚拟机。虚拟机遇到无权限指令或中断时产生VM-Exit退出non-root模式，由KVM判断原因：若是IO操作则返回Qemu-kvm完成模拟，否则由KVM自行处理，完成后重新VM-Entry进入虚拟机。")
            h2(b, "Libvirt")
            p(b, "Libvirt是用C语言编写的KVM虚拟机管理工具和API，屏蔽底层Hypervisor细节，提供统一稳定接口。由API库、守护进程libvirtd和命令行工具virsh三部分组成。调用链：virsh -> libvirtd -> qemu-kvm -> /dev/kvm -> KVM。")
            a(b, attrs("href", "https://www.cnblogs.com/wujuntian/p/16294898.html"), "阅读原文")
        }
    )
}
