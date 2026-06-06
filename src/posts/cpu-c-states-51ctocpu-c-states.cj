package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCpuCStates51ctocpuCStatesPost(): Post {
    return Post(
        "cpu-c-states-51ctocpu-c-states",
        "CPU 电源状态（ C-States ）_51CTO博客_cpu c-states",
        "2023-08-03",
        "介绍 CPU 各级电源状态（C0-C6）的含义、唤醒时间和功耗节省情况，以及 Intel C-State 节能技术的工作原理。",
        { b =>
            h2(b, "CPU 电源状态（ C-States ）")
            p(b, "一般用户很少注意到 CPU 的电源状态，通常只会在使用 CPU-Z 来监控时钟频率和电压时才会留意到它。移动处理器的 C 状态比台式机的多，例如 Core 2 Duo 处理器（Merom）会支持 C0-C4 状态，而桌面型 Core 2 Duo（Conroe）仅支持 C0-C1 状态。")
            p(b, "C0 状态（激活）：CPU 最大工作状态，可以接收指令和处理数据。所有现代处理器必须支持这一功耗状态。")
            p(b, "C1 状态（挂起）：通过执行汇编指令 HLT 进入，唤醒时间超快只需 10 纳秒，可以节省 70% 的 CPU 功耗。所有现代处理器都必须支持此状态。")
            p(b, "C2 状态（停止允许）：处理器时钟频率和 I/O 缓冲被停止，可以节约 70% 的 CPU 和平台能耗，从 C2 切换到 C0 需要 100 纳秒以上。")
            p(b, "C3 状态（深度睡眠）：总线频率和 PLL 均被锁定，在多核心系统下缓存无效。可以节省 70% 的 CPU 功耗，唤醒时间需要 50 微秒。")
            p(b, "C4 状态（更深度睡眠）：与 C3 相似，但核心电压低于 1.0V，二级缓存数据减少。可以节约 98% 的 CPU 最大功耗，唤醒时间不超过 1 秒。")
            p(b, "C5 状态：二级缓存数据减为零，唤醒时间超过 200 微秒。C6 状态是 Penryn 处理器新增的功耗管理模式，核心电压更低，功耗接近零。")
            p(b, "Intel C-State Tech 是主板厂商在 BIOS 中加入的深度节能技术，根据处理器使用情况自动调节电源状态、电压、频率和功耗。只有在 C0 状态下处理器才能执行指令，C1 到 Cn 状态都是不同程度的睡眠状态。")
            p(b, "由于 Intel C-State Tech 在状态切换时也会要求北桥芯片和内存进行电压与频率调整，对硬件要求比较高。如果主板质量不过关或内存体质不够好，开启后可能致使系统频繁死机。如果电脑经常死机，可以在 BIOS 中检查该选项是否启用。")
            a(b, attrs("href", "https://blog.51cto.com/dongyulong/566341"), "阅读原文")
        }
    )
}
