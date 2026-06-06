package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEnspdhcpeasyipenspPost(): Post {
    return Post(
        "enspdhcpeasyipensp",
        "华为eNSP实现外网访问内网，DHCP，easyIP配置案例_ensp服务器上网-CSDN博客",
        "2024-01-11",
        "本文介绍了一个包含多个部门的网络环境中如何实现VLAN隔离及路由器配置的方法。",
        { b =>
            h2(b, "华为eNSP实现外网访问内网，DHCP，easyIP配置案例")
            p(b, "本文介绍了一个包含多个部门的网络环境中如何实现VLAN隔离及路由器配置的方法。重点在于通过配置不同的VLAN来实现各部分的网络独立管理，并通过边界路由器实现特定VLAN对外网的访问控制，同时确保内外网服务器的可访问性。")
            h2(b, "一、需求分析")
            p(b, "1.五个部门独立的网络管理，分别不同的VLAN。2.VLAN网关在SW1上。3.边界路由器R1与SW1通过三层互联。4.R1上配置转换技术实现VLAN10,20,40,50上网，财务部不许上网。5.R1上通过最节省IP地址方式上网，访问server1的WEB服务器。6.各个部分通过DHCP自动获取地址参数，SW1作为DHCP服务器。7.实现在外网能访问内网的server2的WEB服务器。")
            h2(b, "二、配置思路")
            p(b, "1.配置终端设备。2.配置交换机。3.配置路由器。4.测试。")
            h2(b, "三、交换机配置思路")
            p(b, "1.所有交换机配置对应名字。2.所有交换机创建VLAN10,20,30,40,50,100。3.配置与PC、路由器的接口类型为Access。4.配置与交换机的接口类型为Trunk。5.SW1配置VLAN网关。6.在SW1配置默认路由。")
            h2(b, "四、路由配置")
            p(b, "在路由器R1上配置NAT转换技术（Easy IP），实现内网VLAN访问外网。同时配置NAT Server实现外网访问内网服务器。通过ACL控制哪些VLAN可以上网（财务部VLAN30不允许上网）。")
            a(b, attrs("href", "https://blog.csdn.net/m0_62909438/article/details/127253053"), "阅读原文")
        }
    )
}
