package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNfs4UdpTcpPhpPost(): Post {
    return Post(
        "nfs-4-udp-tcp-php",
        "其他-为什么 NFS 在版本 4 中从 UDP 切换到 TCP 作为标准协议？ - 糯米PHP",
        "2023-12-12",
        "原文待补充：其他-为什么 NFS 在版本 4 中从 UDP 切换到 TCP 作为标准协议？ ",
        { b =>
            h2(b, "其他-为什么 NFS 在版本 4 中从 UDP 切换到 TCP 作为标准协议？ - 糯米PHP")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.nuomiphp.com/a/stackoverflow/zh/644c832b7c44e02c344f6f43.html"), "阅读原文")
        }
    )
}
