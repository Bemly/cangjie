package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog19Post(): Post {
    return Post(
        "blog-19",
        "开机进入 GRUB 不要慌，命令行也可启动 Linux",
        "2021-09-20",
        "当开机进入 GRUB 命令行界面时，可以通过手动指定内核和 initrd 文件来启动 Linux 系统。",
        { b =>
            p(b, "当开机进入 GRUB 命令行界面时，不要慌张，可以通过以下步骤手动启动 Linux 系统。")
            h2(b, "1. 查找磁盘分区")
            p(b, "首先利用 ls 命令，找到 Ubuntu 安装在哪个磁盘分区：")
            raw(b, "<pre><code>grub> ls\n(hd0),(hd1),(hd1,gpt3),(hd1,gpt2),(hd1,gpt1)</code></pre>")
            p(b, "假定通过 ls (hd1,gpt2)/boot/grub 发现了 grub.cfg 文件，则表明 Linux 安装在这个分区。")
            h2(b, "2. 找到 /boot 和 / 根分区")
            p(b, "输入 cat 命令查看 fstab 文件：")
            raw(b, "<pre><code>grub> cat (hd0,gpt2)/etc/fstab</code></pre>")
            h2(b, "3. 指定 Linux 内核及根分区")
            raw(b, "<pre><code>grub> linux /boot/vmlinuz-4.8.0-36-generic ro text root=/dev/sda2</code></pre>")
            h2(b, "4. 指定 initrd 文件")
            raw(b, "<pre><code>grub> initrd /boot/initrd.img-4.8.0-36-generic</code></pre>")
            h2(b, "5. 引导系统")
            raw(b, "<pre><code>grub> boot</code></pre>")
            a(b, attrs("href", "https://www.cnblogs.com/zztian/p/10289083.html"), "阅读原文")
        }
    )
}
