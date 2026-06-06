package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB12linuximxPost(): Post {
    return Post(
        "12-linuximx",
        "12. 串口通讯与终端设备 — [野火]嵌入式Linux基础与应用开发实战指南——基于i.MX...",
        "2024-10-09",
        "原文待补充：12. 串口通讯与终端设备 — [野火]嵌入式Linux基础与应用开发实战指南—",
        { b =>
            h2(b, "12. 串口通讯与终端设备 — [野火]嵌入式Linux基础与应用开发实战指南——基于i.MX...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://doc.embedfire.com/linux/imx6/linux_base/zh/latest/linux_app/uart_tty/uart_tty.html"), "阅读原文")
        }
    )
}
