package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAsdzhengvpnservicesVpnservicesPost(): Post {
    return Post(
        "asdzhengvpnservices-vpnservices",
        "asdzheng/vpnservices: 安卓vpnservices的使用经验总结",
        "2025-05-15",
        "GitHub 仓库：asdzheng/vpnservices: 安卓vpnservices的使用经验",
        { b =>
            h2(b, "asdzheng/vpnservices: 安卓vpnservices的使用经验总结")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/asdzheng/vpnservices"), "访问原始链接")
        }
    )
}
