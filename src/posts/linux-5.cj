package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux5Post(): Post {
    return Post(
        "linux-5",
        "千禧年的中文Linux",
        "2022-01-01",
        "2000年左右，中文世界掀起了第一次"国产操作系统"的热潮，许多公司都尝试推出自己本地化的Linux发行版。",
        { b =>
            h2(b, "千禧年的中文Linux")
            p(b, "2000年左右，中文世界掀起了第一次\"国产操作系统\"的热潮，许多公司都尝试推出自己本地化的Linux发行版，来自电脑博物馆网站的这篇文章收集了较有影响力的几个发行版。")
            p(b, "TurboLinux 3.0.2中文版 - 发行于1999年04月19日")
            p(b, "红旗Linux 2.0 - 发行于2000年10月18日")
            p(b, "蓝点Linux 2.0 - 发行于2000年07月20日")
            p(b, "幸福Linux 1.0 - 发行于2000年05月10日")
            p(b, "Xteam Linux 1.0 - 发行于1999年04月2日")
            p(b, "Linux中文延伸套件（CLE） 0.9p1 - 发行于2000年10月30日")
            p(b, "这几个发行版相距的时间都很近，在当时，许多发行版都以半年一版的速度快速更新，足见一时间中文世界Linux的繁荣。")
            p(b, "此展示使用Websocket和noVNC技术提供远程操作界面，由容器化的QEMU提供运行环境，对系统的修改会在没有访问时自动重置。如果您需要输入密码登陆，请尝试用户名\"dnbwg\"及密码\"dnbwg123\"。")
            p(b, "大部分软件的发行日期来自Distrowatch，幸福Linux的发行日期来自官网文章存档，CLE的发行日期来自维基百科，TurboLinux 3.0.2难以找到精确的发行日期，此日期来自TurboLinux中文官网第一条新闻。")
            a(b, attrs("href", "https://www.compumuseum.com/linux.html"), "阅读原文")
        }
    )
}
