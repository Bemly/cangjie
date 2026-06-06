package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCpuintelArmPost(): Post {
    return Post(
        "cpuintel-arm",
        "苹果电脑为什么要换 CPU：Intel 与 ARM 的战争 - 阮一峰的网络日志",
        "2023-08-20",
        "阮一峰回顾苹果公司 CPU 架构变化历史，分析从 Intel x86 转向 ARM 架构的技术含义和未来影响。",
        { b =>
            h2(b, "苹果电脑为什么要换 CPU：Intel 与 ARM 的战争")
            p(b, "2020年6月，媒体报道苹果公司将在 WWDC 上宣布更换 Mac 电脑的 CPU，从 Intel 公司的 x86 架构改成 ARM 架构。一旦 Mac 跟 iPhone 使用同样架构的 CPU，那就铺平了统一操作系统的道路。操作系统无法通用的最主要原因，就是 CPU 架构不同。")
            p(b, "CPU 的全称是\"中央处理单元\"，它是计算机的核心。不同的 CPU 设计实现，就称为\" CPU 架构\"。不同的 CPU 架构有不同的指令集，彼此不通用，这导致运行在上面的软件也不兼容。目前最常见的架构只剩下两种：x86 架构和 ARM 架构。")
            p(b, "x86 架构性能好，但是耗电多、电压高，主要用于桌面电脑和服务器，生产厂商为 Intel 和 AMD。ARM 架构耗电小、电压低，但是单核性能不如 x86，主要用于移动设备。ARM 芯片的生产商有许多家，英国的 ARM 公司出售指令集的授权，高通、三星、华为、苹果等公司的芯片都属于这个模式。")
            p(b, "历史上，Mac 电脑发生过两次 CPU 架构更改。1984年第一代 Macintosh 使用摩托罗拉 68000 芯片，1994年升级为 PowerPC，2005年乔布斯宣布改用 Intel x86 CPU。如今15年过去，情况发生了很大变化——Mac 的 CPU 架构跟 Windows 保持一致已经不构成吸引力了。")
            p(b, "更大的市场变化是，消费者和技术投资的主流已经转向了移动设备。苹果公司的主要业务和利润来源现在都来自移动领域，iPhone 的市场规模已经远远大于 Mac。所有的移动设备使用的都是 ARM 芯片，苹果的投资和技术成果也主要在这个领域。")
            p(b, "Mac 电脑更换 CPU 架构，也与 Intel 公司多年来创新乏力有关。2007年推出 iPhone 之前，苹果曾希望使用 Intel 的 ARM 芯片 XScale 作为手机 CPU，但 Intel CEO 不看好这个项目，不仅放过了 iPhone，还将 XScale 卖给了 Marvell。这是一个灾难级别的错误。")
            p(b, "Intel 在手机业务上失败，在桌面业务上则陷入停滞。MacBook Pro 的 CPU，2010年是2核 2.66 GHz 的 i7，2020年是8核 2.6 GHz 的 i9，过去10年基本上只是改进了工艺、增加了核心数量，没有实质的重大突破。")
            p(b, "苹果从2010年 iPhone 4 开始采用自己设计的 CPU（Apple A4），大概从那时起就有用自己的芯片替换 Intel 的打算。2016年在 MacBook Pro 里加入 Apple T1 芯片，2018年推出 Apple T2，逐步将 iPhone 的技术积累引入 Mac。")
            p(b, "Mac 电脑采用 ARM 架构后，能实现统一的 Apple 生态——不同设备都有同样的架构，运行同样的程序，差别只是外形尺寸与性能。回顾历史，Mac 从 PowerPC 转为 x86 整整花了6年，这次从 x86 转为 ARM 估计也需要同样长的时间。")
            a(b, attrs("href", "https://www.ruanyifeng.com/blog/2020/06/cpu-architecture.html"), "阅读原文")
        }
    )
}
