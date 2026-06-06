package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIcmpcsPost(): Post {
    return Post(
        "icmpcs",
        "内网穿透之icmp隧道搭建+上线CS+环境场景搭建-腾讯云开发者社区-腾讯云",
        "2024-01-15",
        "在后渗透中内网隧道是必不可少的，本文介绍ICMP隧道搭建与上线CS的完整过程",
        { b =>
            h2(b, "内网穿透之icmp隧道搭建+上线CS+环境场景搭建")
            p(b, "在后渗透中内网隧道是必不可少的，在能够TCP出网的情况下搭建隧道是最容易的，使用frp即稳定又方便。但是也有很多TCP不出网的情况，在这种场景下搭建隧道就要另寻门路了。为了方便学习内网隧道技术，作者在公司内网环境搭建了基于Windows系统的苛刻的隧道环境。")
            h2(b, "环境搭建")
            p(b, "192.168.3.76(kali)模拟公网VPS地址，WEB服务器1(Windows Server 2019)模拟公司对外提供Web服务的机器，该机器可以通内网。内网同网段存在一台Windows内网服务器，Web服务器可以访问该机器远程桌面。拿到web服务器shell之后发现只能使用ICMP协议访问公网VPS（ping），所以只能用ICMP搭建通往内网的隧道。")
            h2(b, "获取WEB服务器shell")
            p(b, "通过phpstudy探针得到网站路径C:/phpStudy/WWW，使用phpmyadmin弱口令root/root连接，通过MySQL写入webshell，然后使用蚁剑连接获取shell。")
            h2(b, "EW+PingTunnel组合建立SOCKS5隧道")
            p(b, "EarthWorm是一款用于开启SOCKS v5代理服务的工具。pingtunnel是把tcp/udp/sock5流量伪装成ICMP流量进行转发的工具。由于ICMP为网络层协议，应用层防火墙无法识别，且请求包当中的数据字段被加密。")
            p(b, "在VPS端执行ew和pingtunnel服务器模式，在WEB服务器执行pingtunnel客户端和ew的rssocks模式，建立SOCKS5隧道后使用proxifier设置代理即可访问内网。")
            h2(b, "PingTunnel上线MSF和CS")
            p(b, "VPS服务端开启pingtunnel服务器模式，客户端将监听到的连接通过ICMP服务器转发到C2服务器。制作木马的回连地址为127.0.0.1:9999，运行即可上线MSF或CS。")
            h2(b, "SPP搭建SOCKS5隧道")
            p(b, "SPP支持多种协议：tcp、udp、rudp、ricmp、rhttp、kcp、quic，支持正向代理、反向代理、SOCKS5正向代理、SOCKS5反向代理。VPS执行spp服务器模式监听ricmp，WEB服务器执行反向SOCKS5客户端，成功搭建隧道后设置代理即可访问内网。")
            h2(b, "ICMPsh反弹shell")
            p(b, "ICMPsh是一个简单的反向ICMP shell，主要优势在于不需要管理权限即可在目标机器上运行。在VPS运行icmpsh控制端，在WEB服务器运行icmpsh客户端，VPS即可接收到shell。使用wireshark抓包可以看到数据包都是ICMP协议。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2035886?areaSource=102001.20&traceId=G-fj0Y8qlsxXqj4dC8QGY"), "阅读原文")
        }
    )
}
