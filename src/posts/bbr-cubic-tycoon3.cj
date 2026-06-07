package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBbrCubicTycoon3Post(): Post {
    return Post(
        "bbr-cubic-tycoon3",
        "数据中心网络 BBR 不如 CUBIC ？ - tycoon3 - 博客园",
        "2024-09-07",
        "在内网低时延高吞吐环境下，BBR 由于依赖 pacing 需要高精度 timer，导致消耗大量额外 CPU，性能不如 CUBIC。",
        { b =>
            h2(b, "数据中心网络 BBR 不如 CUBIC ？")
            p(b, "TCP 拥塞控制算法在网络中占据重要地位，在 BBR 算法出来之前，大部分现代操作系统的拥塞控制算法经过好几代的更新，最后大多都是采用 Cubic；而在 BBR 出现之后，由于它在长肥网络中优异的带宽利用率，加上 Google 在 Youtube 的推广，大有替换 cubic 等传统 TCP 拥塞算法的趋势。")
            p(b, "然而 RDS 的 Redis 遇到一个问题，他们将 ECS 从 Aliyun Linux 升级到 Aliyun Linux2 上之后，发现性能反而变差了近一倍。测试场景：在两个 VM 中分别跑 redis-server 和 memtier_benchmark，观察 benchmark 输出的 ops/sec。结果 Aliyun Linux 1 (kernel 4.4.95-3) 达到 14W+，而 Aliyun Linux 2 (kernel 4.19.48-14) 只有 8W+。")
            p(b, "进一步对比发现问题出在拥塞控制算法上：Aliyun Linux 1 使用 cubic，Aliyun Linux 2 使用 BBR。在连接数不多的情况下差别不大，但连接数到 8 个之后 BBR 明显不如 CUBIC。原因是 cubic 在跑相同 QPS 的情况下，达到 CPU 瓶颈时连接数明显比 BBR 要高。")
            p(b, "单线程情况下对比 CPU 利用率：BBR 的 sys 占比明显比 CUBIC 要高，说明 BBR 需要处理的内核逻辑比 CUBIC 明显要多。sys 越高，同样的 CPU 利用率下应用真正能干的活就越少。在该场景下，cubic 的 user/sys 大概是 bbr 的 1.55 到 1.86 倍。")
            h2(b, "用 netperf 验证")
            p(b, "用标准网络工具 netperf 测试 TCP_RR（单连接时延）和 TCP_STREAM（单连接吞吐），结果与 redis benchmark 类似。相同吞吐下 BBR 的 sys 态 CPU 利用率高于 CUBIC，某些场景差别非常明显（send_size==1024 时 CUBIC vs BBR: 51.69 vs 98.20）。")
            h2(b, "根因分析")
            p(b, "perf 抓包对比发现，BBR 相比 CUBIC 多出的 CPU 占用根本不在 BBR 自身逻辑上，而是在 hrtimer 相关函数：ipt_do_table、_raw_spin_unlock_irqrestore、smp_apic_timer_interrupt。BBR 代码注释中就写了：BBR might be used with the fq qdisc with pacing enabled, otherwise TCP stack falls back to an internal pacing using one high resolution timer per TCP socket and may use more resources.")
            p(b, "BBR 依赖 pacing，在 bbr_init() 中把 sk->sk_pacing_status 初始化为 SK_PACING_NEEDED。一旦设置，TCP 会通过 hrtimer 实现 pacing，从而引入大量 hrtimer 逻辑占用 CPU。而 cubic 中该值为 SK_PACING_NONE，不会触发 hrtimer。")
            h2(b, "解决方案：启用 tc-fq")
            p(b, "既然 BBR 多出的 CPU 开销是由 sk_pacing_status 引发的，而该字段可以复用 tc-fq 中的 pacing（SK_PACING_FQ），打开 tc-fq 即可避免 hrtimer 的时钟中断开销。执行 tc qdisc add dev eth0 root fq 后，BBR 不再使用额外的高精度时钟，CPU 消耗与 cubic 差不太多，性能差距缩小到 5% 以内。")
            h2(b, "总结与建议")
            p(b, "在内网低时延、高吞吐环境下：默认不使用 tc-fq 时，BBR 依赖高精度 timer 导致额外 CPU 消耗，高 PPS 场景下性能变差；换成 tc-fq 后 BBR 与 CUBIC 性能相当。建议：若仅在内网使用，建议继续使用 cubic；若对外提供服务，建议使用 BBR 并使相应网卡使用 tc-fq 调度。")
            a(b, attrs("href", "https://www.cnblogs.com/dream397/p/14505239.html"), "阅读原文")
        }
    )
}
