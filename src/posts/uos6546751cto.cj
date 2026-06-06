package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUos6546751ctoPost(): Post {
    return Post(
        "uos6546751cto",
        "统信UOS中普通用户忘记密码处理方法_65467的技术博客_51CTO博客",
        "2021-09-26",
        "介绍统信UOS系统中普通用户忘记密码的两种处理方法：单用户模式和PE模式。",
        { b =>
            h2(b, "统信UOS中普通用户忘记密码处理方法")
            p(b, "本文介绍了统信UOS系统中普通用户忘记密码的两种处理方法，适用于不同系统版本，阅读量超过1万。")
            h2(b, "方法一：使用UOS系统单用户模式重置密码")
            p(b, "仅适用于UOS v20 1031以前系统版本。启动系统到grub菜单页面，按下键盘【E】。找到含有命令linux的那一行，将参数\"ro splash quiet\"修改为\"rw init=/bin/sh\"后，按下ctrl+x启动系统。")
            p(b, "系统会启动到单用户界面，使用命令\"passwd admin1\"来修改普通用户密码，输入两次密码后回车（密码默认不显示，默认用户名为admin1）。")
            p(b, "还需要删除被修改密码的用户密钥目录：cd /home/admin1/.local/share && rm -rf keyrings。如果账户有被锁定，还需要删除/var/lib/deepin/authenticate/limit-states.json。完成后按下ctrl+alt+del重启即可。")
            h2(b, "方法二：使用UOS系统PE模式（适用于所有版本）")
            p(b, "先使用统信UOS系统制作光盘或者U盘启动镜像，从光盘或U盘中启动电脑，在启动界面下按下键盘字母【E】。进入启动项参数编辑界面，删除\"livecd-installer\"后按下【F10】进入UOS预览系统。")
            p(b, "打开【计算机】找到本机硬盘，进入【etc】目录，在空白位置右击选择【在终端中打开】。输入命令\"sudo deepin-editor shadow\"，找到客户使用的用户名那一行，删除从第一个冒号到第二个冒号间的加密密钥串，保存后重启即可。")
            p(b, "密码清空后建议重新设置，否则后续软件包安装及其它操作无法正确应对授权对话。如客户有免密码登录需求，可以打开【设置】-【帐户】勾选\"自动登录\"和\"无密码登录\"。")
            a(b, attrs("href", "https://blog.51cto.com/idtechOPS/2666239"), "阅读原文")
        }
    )
}
