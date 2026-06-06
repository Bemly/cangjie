package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getClashForWindowsV02039ClashPost(): Post {
    return Post(
        "clash-for-windows-v-02039-clash",
        "clash for windows v 0.20.39 - Clash",
        "2023-11-03",
        "Clash for Windows 0.20.39版本发布，新增TUN模式DNS设置选项",
        { b =>
            h2(b, "clash for windows v 0.20.39")
            p(b, "Clash是一款基于Clash和Electron的Windows/macOS/Linux GUI客户端。0.20.39版本于2023年10月20日发布，属于版本发布分类。")
            h2(b, "更新内容")
            p(b, "在TUN模式设置对话框中添加新选项：DNS IPv6 (dns.ipv6)、默认Nameservers (dns.default-nameserver)、Nameserver策略 (dns.nameserver-policy)。")
            p(b, "添加\"通过内置代理更新\"设置：新增了一个通过内置Clash代理更新配置文件的设置选项。")
            p(b, "提示调整：对提示信息进行了调整。其他杂项：修复了各种小故障。")
            h2(b, "下载")
            p(b, "该版本提供多平台下载，包括macOS (arm64/dmg/7z)、Windows (arm64/ia32/x64 exe/7z)、Linux (x64 tar.gz)等格式。")
            p(b, "注意：原GitHub仓库的release已被删除，可通过web.archive.org查看存档。本站提供镜像下载，可自行查询sha256sum验证文件完整性。")
            p(b, "温馨提醒：任何机场都有跑路的可能性，推荐购买月付，以降低风险。")
            a(b, attrs("href", "https://www.clash.la/archives/750/"), "阅读原文")
        }
    )
}
