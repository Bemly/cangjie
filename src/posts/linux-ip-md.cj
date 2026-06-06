package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxIpMdPost(): Post {
    return Post(
        "linux-ip-md",
        "如何在 Linux 中启用 IP 转发 · MD/博客",
        "2024-03-24",
        "详细介绍Linux系统中启用IP转发的多种方法，包括临时设置和永久配置。",
        { b =>
            h2(b, "How to enable IP Forwarding in Linux")
            p(b, "By default any modern Linux distributions will have IP Forwarding disabled. This is normally a good idea, as most people will not need IP Forwarding. But if we are setting up a Linux router/gateway or maybe a VPN server (pptp or ipsec) or just a plain dial-in server then we will need to enable forwarding.")
            h3(b, "Check if IP Forwarding is enabled")
            p(b, "We have to query the sysctl kernel value net.ipv4.ip_forward to see if forwarding is enabled or not. Using sysctl: sysctl net.ipv4.ip_forward shows net.ipv4.ip_forward = 0 (disabled). Or just check the value in the /proc system: cat /proc/sys/net/ipv4/ip_forward shows 0.")
            h3(b, "Enable IP Forwarding on the fly")
            p(b, "As with any sysctl kernel parameters we can change the value of net.ipv4.ip_forward on the fly (without rebooting the system):")
            raw(b, "<blockquote>sysctl -w net.ipv4.ip_forward=1</blockquote>")
            p(b, "Or alternatively: echo 1 > /proc/sys/net/ipv4/ip_forward. The setting is changed instantly but the result will not be preserved after rebooting the system.")
            h3(b, "Permanent setting using /etc/sysctl.conf")
            p(b, "If we want to make this configuration permanent the best way is using the file /etc/sysctl.conf where we can add a line containing net.ipv4.ip_forward = 1. To enable the changes made in sysctl.conf you will need to run: sysctl -p /etc/sysctl.conf")
            p(b, "On RedHat based systems this is also enabled when restarting the network service: service network restart. On Debian/Ubuntu systems this can be done by restarting the procps service: /etc/init.d/procps.sh restart")
            h3(b, "Distribution specific init scripts")
            p(b, "Debian based distributions might use the setting /etc/network/options: ip_forward=no (set to yes and restart network service). RedHat distributions might set this using /etc/sysconfig/network: FORWARD_IPV4=true and restart the network service.")
            h3(b, "验证设置")
            p(b, "Regardless of the method used, verify with: sysctl net.ipv4.ip_forward should show net.ipv4.ip_forward = 1. If the result is 1 then the Linux system will start forwarding IP packets even if they are not destined to any of its own network interfaces.")
            a(b, attrs("href", "https://www.ducea.com/2006/08/01/how-to-enable-ip-forwarding-in-linux/"), "阅读原文")
        }
    )
}
