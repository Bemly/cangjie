package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog27Post(): Post {
    return Post(
        "blog-27",
        "统信 UOS 中普通用户忘记密码处理方法",
        "2021-09-26",
        "介绍统信 UOS 系统中普通用户忘记密码的两种处理方法：单用户模式重置和 PE 模式重置。",
        { b =>
            h2(b, "方法一：单用户模式重置密码")
            p(b, "仅适用于 UOS v20 1031 以前系统版本。启动系统到 GRUB 菜单页面，按下键盘 E 键。")
            p(b, "找到含有命令 linux 的那一行，将参数 ro splash quiet 修改为 rw init=/bin/sh，然后按下 Ctrl+X 启动系统。")
            p(b, "使用命令 passwd admin1 来修改普通用户密码，输入两次密码后回车。")
            p(b, "删除被修改密码的用户密钥目录（该目录用于在图形界面下保存常用密码）：")
            raw(b, "<pre><code>cd /home/admin1/.local/share && rm -rf keyrings</code></pre>")
            p(b, "如果账户有被锁定，还需要删除限制文件：")
            raw(b, "<pre><code>cd /var/lib/deepin/authenticate && sudo rm limit-states.json</code></pre>")
            h2(b, "方法二：PE 模式（适用于所有版本）")
            p(b, "使用统信 UOS 系统制作光盘或 U 盘启动镜像，从光盘或 U 盘中启动电脑。按下键盘 E 键进入启动项参数编辑界面。")
            p(b, "删除 livecd-installer 后按 F10 进入 U 盘中的 UOS 预览系统。打开计算机找到本机硬盘，进入 etc 目录。")
            p(b, "在终端中输入以下命令进入密码编辑器：")
            raw(b, "<pre><code>sudo deepin-editor shadow</code></pre>")
            p(b, "找到用户名那一行，删除从第一个冒号到第二个冒号间的加密密钥串，保存后重启系统即可直接进入。")
            a(b, attrs("href", "https://blog.51cto.com/idtechOPS/2666239"), "阅读原文")
        }
    )
}
