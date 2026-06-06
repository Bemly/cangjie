package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPingtunnelptunnelptunnelPost(): Post {
    return Post(
        "pingtunnelptunnelptunnel",
        "PingTunnel(ptunnel)源码分析与性能改进_ptunnel 下载-CSDN博客",
        "2024-01-15",
        "PingTunnel是用于内网穿透的工具，本文分析其源码并进行性能改进",
        { b =>
            h2(b, "PingTunnel源码分析与性能改进")
            p(b, "PingTunnel是用于内网穿透的工具，这个工具大概是2004年左右由Daniel创建，之后维护到2011年左右，支持通过ICMP或DNS(UDP)通道做隧道传输TCP报文，在其中实现了稳定链路传输（包括报文的序号与ACK响应、丢包重发、包乱序重组、滑动窗口发送等），TCP转发，多会话维护，核心代码集中在ptunnel.c一个1600行左右的文件中实现。")
            h2(b, "主要问题")
            p(b, "在某受限内网中运行客户端连到公网阿里云服务器端，发现传输速度大概只有5-20KB/s。服务端带宽是5M，大概对应最大下行速率为500KB/s。在传输文件过程中，发送端的CPU直接升到100%。")
            h2(b, "问题1：ACK包响应太慢及发包太快导致传输受限")
            p(b, "软件的缺省配置：滑动窗口大小为64（即发送队列大小），每个包最大为1KB，即1次最大发送64KB数据；1s超时后会发送ACK响应包；1.5s超时后会重发包。在发送大文件时，64个包共64KB数据过去后对方并不响应，而是等到1秒超时后才响应，导致1秒只能传输64KB数据。")
            p(b, "解决思路：尽快回复ACK，而不是等到1秒后。实现为每收到32个包就发一次ACK包，或select超时返回时就发ACK包。修改后内网速率从最大60KB/s上升到50MB/s以上。在公网环境中，将窗口大小从64改为8后，速率升到500-800KB/s，基本达到运营商给的极限速率。")
            h2(b, "问题2：发送方CPU 100%问题")
            p(b, "当发送队列满了时不再接收包，select将直接返回导致循环空转耗尽CPU。最初用sleep(1ms)方案解决，CPU从100%降到5%以内，但内网速率从50MB/s降到1MB/s。最终方案：当发送队列已满时，不在select中监听这个socket，通过select实现阻塞，CPU几乎看不出明显消耗且速率没有损失。")
            h2(b, "问题3：连接有时会挂掉")
            p(b, "有小概率会出现传输一会后两边陷入相互重发报文、互相等待对方发送ACK的死锁情况。原因是ACK包放在发送队列中，当队列满了就发不了ACK，导致死锁。解决方法：ACK包不放到发送队列，使用序列号加10000的技巧让ACK不影响对方接收队列，但能清理发送队列。")
            h2(b, "未来的改进展望")
            p(b, "作者提出基于IP层而非TCP层的实现方案：在IP层监听raw socket而非TCP socket，直接处理IP报文，完全不必实现稳定连接或流量控制，由上层TCP协议保障。这样代码更简单，且能更高效利用带宽，支持转发任意IP报文。")
            a(b, attrs("href", "https://blog.csdn.net/skyshore/article/details/119820143"), "阅读原文")
        }
    )
}
