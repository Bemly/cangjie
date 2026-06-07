package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPowerpcWujianmingPost(): Post {
    return Post(
        "powerpc-wujianming",
        "PowerPC技术与市场杂谈 - 吴建明wujianming - 博客园",
        "2024-09-29",
        "全面介绍PowerPC架构的发展历史、产品系列、指令集体系和市场应用。",
        { b =>
            h2(b, "PowerPC架构和产品")
            p(b, "PowerPC的产品线非常复杂。比较ARM、x86以及PowerPC：ARM系列产品虽然众多，但内核版本变化一目了然；x86系列产品主要是Intel和AMD，产品线非常清晰。唯有PowerPC，经过AIM的分合、IP核的授权、IP在各公司之间转授以及IBM的回购等商业活动，各家产品已经千变万化。PowerPC产品从通用处理器到嵌入式处理器和超算服务器，从毫瓦级功耗的嵌入式应用到高端服务器都有应用。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/powerpc-wujianming/powerpc-01.avif", "alt", "PowerPC产品线", "style", "max-width:100%"))
            h2(b, "PowerPC介绍")
            p(b, "二十世纪九十年代，IBM、Apple和Motorola公司开发PowerPC芯片成功。PowerPC最初含义是Performance Optimized With Enhanced RISC，PC指的是Performance Computing。目前主流的PowerPC处理器制造商有IBM、Freescale（原摩托罗拉半导体部）、AMCC、LSI等。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/powerpc-wujianming/powerpc-02.avif", "alt", "PowerPC历史", "style", "max-width:100%"))
            h2(b, "IBM的PowerPC家族")
            p(b, "IBM共有3个主要PowerPC处理系列：Power、Power PC和CELL。POWER系列从1990年开始生产，主要型号有POWER 1到POWER 7+。POWER 1于1990年发布，约80万个晶体管，最成功的应用是被用于火星探路者宇宙飞船。POWER 4于2001年发布，封装了一亿七千四百万个晶体管，是业界第一款批量生产的单芯片双核设计。POWER 7+采用32nm制程工艺，8核芯架构，主频超过5GHz。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/powerpc-wujianming/powerpc-03.avif", "alt", "IBM PowerPC家族", "style", "max-width:100%"))
            h2(b, "Freescale PowerPC系列")
            p(b, "Freescale提供了数量众多的含集成化外设的PowerPC处理器，在网络设备市场取得了非常可观的成功。其PowerQUICC系列从1995年MPC860芯片面市开始，经历了从PowerQUICC I到PowerQUICC III的升级。Freescale将其产品划分成3个主要市场：网络设备、汽车电子和工业控制。QorIQ通信平台是PowerQUICC的下一代演进产品，包含P1到P5五个产品平台。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/powerpc-wujianming/powerpc-04.avif", "alt", "Freescale PowerPC", "style", "max-width:100%"))
            h2(b, "PowerPC指令集")
            p(b, "PowerPC体系结构是一种RISC体系结构，定义了200多条指令，大部分指令在单一周期内执行。体系结构分为三个级别：Book I定义用户指令集体系结构，Book II定义虚拟环境体系结构，Book III定义操作环境体系结构。PowerPC支持字节、半字、字和双字数据类型，32位实现支持4GB有效地址空间，64位实现支持16EB有效地址空间。")
            h2(b, "PowerPC动态")
            p(b, "IBM在OpenPOWER Summit 2020上宣布向OpenPOWER社区贡献A2O POWER处理器核心等关键技术。2020年8月，IBM展示了IBM POWER10处理器，采用7纳米工艺，专注于能效和性能设计。与POWER9相比，预计处理器能效、工作负载能力和容器密度将实现多达三倍的提升。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/powerpc-wujianming/powerpc-05.avif", "alt", "POWER10处理器", "style", "max-width:100%"))
            a(b, attrs("href", "https://www.cnblogs.com/wujianming-110117/p/16538827.html"), "阅读原文")
        }
    )
}
