package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIBuiltAReceiptPrinterForGithubIssuesAPost(): Post {
    return Post(
        "i-built-a-receipt-printer-for-github-issues-a",
        "I built a receipt printer for GitHub issues - Andrew Schmelyun",
        "2024-02-02",
        "作者使用 Epson 热敏打印机和 Raspberry Pi Zero W 搭建了一个自动打印 GitHub Issue 收据的系统。",
        { b =>
            h2(b, "I built a receipt printer for GitHub issues")
            p(b, "作者 Andrew Schmelyun 在 GitHub 上有很多副业项目，经常收到 issue 通知但容易被邮件淹没或遗忘。在看到外卖店的收据打印机后，他想到可以用热敏打印机自动打印 GitHub Issue 工单。")
            h2(b, "硬件清单")
            p(b, "项目使用了以下硬件：Epson TM-T88IV 热敏打印机、Raspberry Pi Zero W、Micro USB 转 USB 适配器、USB Type-B 数据线。选择 Epson 热敏打印机是因为它使用 ESC/POS 命令集，有成熟的多语言库支持，而且在二手市场上很常见。Raspberry Pi Zero W 作为连接互联网和打印机的硬件设备。")
            h2(b, "发送数据到打印机")
            p(b, "作者使用 PHP 语言和 mike42/escpos-php 库来发送数据到打印机。首先需要通过 lsusb 获取打印机的 Vendor ID 和 Product ID，创建 udev 规则让用户可以通过 /dev/usb/lp0 访问打印机，然后编写简单的 PHP 脚本发送文本到打印机。")
            h2(b, "连接 GitHub")
            p(b, "GitHub 的 webhook 功能可以监听仓库事件。作者在仓库设置页面创建 webhook，选择 Issues 事件，数据类型为 JSON。由于 Raspberry Pi 在本地网络中，使用 ngrok 来创建隧道，将本地 PHP 服务器暴露到公网。ngrok 提供的 HTTPS URL 填入 GitHub webhook 的 URL 字段。")
            h2(b, "最终实现")
            p(b, "最终代码会解码 GitHub 发送的 JSON 请求，使用 ESC/POS 库格式化打印内容，包括加粗和下划线的 issue 标题、正文内容等。当在仓库中创建新 issue 时，打印机就会自动打印出一张工单收据。")
            p(b, "作者建议的扩展方向包括：添加 QR 码链接到 GitHub issue、显示标签和严重程度、将此概念应用到 Jira、Bugsnag 等其他 webhook 场景，甚至打印每日待办事项和购物清单。")
            a(b, attrs("href", "https://aschmelyun.com/blog/i-built-a-receipt-printer-for-github-issues/"), "阅读原文")
        }
    )
}
