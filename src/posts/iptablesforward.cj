package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIptablesforwardPost(): Post {
    return Post(
        "iptablesforward",
        "iptables之forward转发 - 技术颜良 - 博客园",
        "2024-09-23",
        "介绍iptables中FORWARD链的转发功能，包括网络防火墙配置和转发过滤实例。",
        { b =>
            h2(b, "网络防火墙")
            p(b, "网络防火墙处于网络入口的边缘，针对网络入口进行防护，针对整个网络入口后面的局域网。当外部网络主机与内部网络主机互相进行通讯时，都要经过iptables所在的主机，由iptables所在的主机进行\"过滤并转发\"，这就是防火墙的主要工作。")
            p(b, "网络防火墙的主要职责是\"过滤并转发\"，在五链中，只有INPUT、OUTPUT和FORWARD有filter（过滤）功能，要想实现转发，报文必须经过FORWARD链。因此，iptables的角色变为\"网络防火墙\"时，规则只能定义在FORWARD链。")
            h2(b, "FORWARD转发实例")
            p(b, "实验环境：外网主机IP地址192.168.119.5，防火墙主机eth0为192.168.119.132，eth1为192.168.116.132，内网主机IP地址192.168.116.7。内网的网关必须为防火墙内网的地址，外网和防火墙的eth0网卡设置为nat模式，内网和防火墙的eth1设置为仅主机模式。")
            p(b, "首先在外网上新增一条路由：route add -net 192.168.116.0/24 gw 192.168.119.132。此时外网可以ping通防火墙的两块网卡，但还是ping不通内网。原因是防火墙在收到非自己的地址报文时没有回应，需要打开防火墙的转发功能。")
            h2(b, "打开防火墙转发功能")
            p(b, "临时打开：echo 1 > /proc/sys/net/ipv4/ip_forward。永久修改：在CentOS6中编辑/etc/sysctl.conf，将net.ipv4.ip_forward = 0修改为1；在CentOS7中编辑/usr/lib/sysctl.d/00-system.conf，加入net.ipv4.ip_forward=1。打开转发功能后，内外网可以相互ping通。")
            h2(b, "FORWARD过滤实例")
            p(b, "iptables作为网络防火墙时负责\"过滤和转发\"。在防火墙上配置FORWARD链拒绝任何报文通过：iptables -A FORWARD -j REJECT。然后配置访问规则，允许内网访问外网的web服务：iptables -I FORWARD -s 192.168.116.0/24 -p tcp --dport 80 -j ACCEPT，以及允许外网访问内网的web服务。")
            a(b, attrs("href", "https://www.cnblogs.com/cheyunhua/p/17387018.html"), "阅读原文")
        }
    )
}
