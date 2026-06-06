package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxDeviceDriversThirdEditionLwnnetPost(): Post {
    return Post(
        "linux-device-drivers-third-edition-lwnnet",
        "Linux Device Drivers, Third Edition [LWN.net]",
        "2024-03-10",
        "Linux设备驱动程序第三版，由Jonathan Corbet、Alessandro Rubini和Greg Kroah-Hartman编写，基于2.6.10内核",
        { b =>
            h2(b, "Linux Device Drivers, Third Edition")
            p(b, "这是Linux Device Drivers第三版的官方网站，由Jonathan Corbet、Alessandro Rubini和Greg Kroah-Hartman编写。目前只提供完成的PDF文件，后续也计划提供HTML版本和DocBook源文件。")
            p(b, "本书基于Creative Commons Attribution-ShareAlike 2.0许可证发布，可以自由下载和重新分发。LDD3基于2.6.10内核版本。")
            p(b, "全书共18章，涵盖以下主题：")
            p(b, "第1章：设备驱动程序简介；第2章：构建和运行模块；第3章：字符设备驱动；第4章：调试技术；第5章：并发和竞态条件；第6章：高级字符设备操作；第7章：时间、延迟和延迟工作；第8章：内存分配；第9章：与硬件通信；第10章：中断处理。")
            p(b, "第11章：内核中的数据类型；第12章：PCI驱动；第13章：USB驱动；第14章：Linux设备模型；第15章：内存映射和DMA；第16章：块设备驱动；第17章：网络驱动；第18章：TTY驱动。")
            a(b, attrs("href", "https://lwn.net/Kernel/LDD3/"), "访问原始链接")
        }
    )
}
