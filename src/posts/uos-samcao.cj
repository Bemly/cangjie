package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUosSamcaoPost(): Post {
    return Post(
        "uos-samcao",
        "UOS命令行服务器离线授权码激活步骤 - samcao - 博客园",
        "2021-08-22",
        "UOS系统通过命令行进行离线授权码激活的详细步骤。",
        { b =>
            h2(b, "UOS命令行服务器离线授权码激活步骤")
            p(b, "samcao在博客园上分享了统信UOS系统通过命令行进行离线授权码激活的方法，阅读量超过2万。")
            p(b, "激活命令：uos-activator-cmd -a ****-****-****-****（接激活码）")
            h2(b, "离线激活流程")
            p(b, "1. 先进行本地断网（如拔网线），如果是因为网卡原因或其他复杂网络原因，断网后重启一次。")
            p(b, "2. 输入命令 uos-activator-cmd -a 激活码")
            p(b, "3. 屏幕上会打印一个二维码")
            p(b, "4. 扫码屏幕二维码——点击激活——手机上会有一个离线激活码")
            p(b, "5. 在设备上填入这个离线激活码——回车——激活成功")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/uos-samcao/uos-activation.avif", "alt", "UOS离线激活", "style", "max-width:100%"))
            p(b, "samcao的博客主要关注UOS相关技术，共有75篇UOS相关随笔，涵盖系统安装、配置、故障排除等多个方面。")
            a(b, attrs("href", "https://www.cnblogs.com/drgcaosheng/p/12808987.html"), "阅读原文")
        }
    )
}
