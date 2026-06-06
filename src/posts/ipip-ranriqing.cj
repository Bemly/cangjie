package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIpipRanriqingPost(): Post {
    return Post(
        "ipip-ranriqing",
        "如何拒绝国外IP/屏蔽国外IP访问服务器？ - ranriqing - 博客园",
        "2024-09-23",
        "介绍使用Iptables、Ipset和Ipdeny来屏蔽国外IP访问服务器的完整实现步骤。",
        { b =>
            h2(b, "如何拒绝国外IP/屏蔽国外IP访问服务器？")
            p(b, "互联网上有很多扫描器，24小时不间断扫描服务器，然后去尝试获取一定权限，进而控制您的服务器。实际运维和查看服务器日志中，发现大多数发起攻击的服务器在国外，如荷兰、美国、新加坡、日本等国家。不论我们购买的是云服务器还是IDC机房托管的服务器，只要我们对外提供了一定的服务，就会暴漏服务端口。")
            h2(b, "解决方案")
            p(b, "大多国内公司的服务器都是面向国内用户，能不能禁止国外的IP访问服务器呢？显著提升服务器的安全性，答案是肯定的。服务器上都是有防火墙工具软件的（Iptables），可以用来过滤和拦截请求。Iptables中包含了一个叫Ipset的模块，支持匹配大批量IP地址段，同时兼具良好的性能。")
            h2(b, "实现步骤")
            p(b, "操作系统环境是CentOS7.6。下面来详细讲解基于Iptables、Ipset、Ipdeny来屏蔽国外IP访问服务器的具体实现。")
            h2(b, "整理IP地址段到Ipset")
            p(b, "1、下载IP地址段文件：访问网址 http://www.ipdeny.com/ipblocks/data/countries/cn.zone ，另存为国内IP地址段，然后将文件上传到服务器。也可以直接在服务器上执行命令下载：wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone")
            p(b, "2、将IP地址段转换为Ipset指令：执行脚本，将IP地址段中的记录转换为Ipset指令，保存在ipset_result.sh可执行文件中。for i in cat cn.zone; do echo ipset add china $i >>ipset_result.sh; done")
            p(b, "3、Ipset写入地址段数据：首先创建一个名字叫china的Ipset的链，然后执行前面生成的ipset_result.sh脚本，为china链添加国内地址段。接着添加局域网IP地址段，防止局域网IP地址被拦截。")
            h2(b, "在Iptables中调用Ipset完成拦截")
            p(b, "Iptables中的指令有从上到下匹配顺序的，我们需要注意拦截指令顺序。假设我们已经有Iptables指令，需要通过iptables -I指令插入到现有INPUT链中。关键指令：iptables -I INPUT 5 -m set ! --match-set china src -j DROP")
            p(b, "如果没有启用Iptables，可以通过脚本清除重建Iptables。关键规则包括：允许本机连接、允许已建立的连接、允许ICMP协议、匹配china链非国内IP直接丢弃、开放特定端口（如80、443、5060等）。")
            h2(b, "持久化规则")
            p(b, "让服务器重启时通过脚本加载数据：ipset save china > /etc/ipset.conf，然后在rc.local中添加恢复命令。Iptables规则也需要持久化：iptables-save > /etc/sysconfig/iptables。")
            a(b, attrs("href", "https://www.cnblogs.com/ranriqing/p/16693099.html"), "阅读原文")
        }
    )
}
