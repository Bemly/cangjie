package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLubuntuonboardweixin3095460Post(): Post {
    return Post(
        "lubuntuonboardweixin3095460",
        "Lubuntu安装屏幕键盘onboard，使触摸屏可以登录和输入_weixin_3095460...",
        "2021-09-10",
        "本文介绍了如何在Lubuntu 18.04 LTS系统上安装并配置屏幕键盘Onboard，以便在触摸屏设备上进行登录和输入操作。",
        { b =>
            h2(b, "Lubuntu安装屏幕键盘onboard，使触摸屏可以登录和输入")
            p(b, "Lubuntu 18.04 LTS桌面使用 LightDM 显示管理器，默认已经安装了GTK+ 欢迎界面。需要的话可以用下列命令安装使用：")
            raw(b, "<pre><code>sudo apt-get install lightdm-gtk-greeter</code></pre>")
            p(b, "安装屏幕键盘软件Onboard：")
            raw(b, "<pre><code>sudo apt-get install onboard</code></pre>")
            p(b, "安装完成后，打开LX终端，执行下列命令修改配置文件：")
            raw(b, "<pre><code>sudo nano /etc/lightdm/lightdm-gtk-greeter.conf</code></pre>")
            p(b, "使keyboard参数可用，在配置文件中加入或取消注释以下内容：")
            raw(b, "<pre><code>[greeter]\nkeyboard=onboard</code></pre>")
            p(b, "按下Ctrl+O保存设置，Ctrl+X退出nano编辑器。注销登录即可使用屏幕键盘。")
            p(b, "在Dell Venue 8 Pro上测试通过，触摸屏设备可以正常使用Onboard屏幕键盘进行登录和输入操作。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_30954607/article/details/95136367"), "阅读原文")
        }
    )
}
