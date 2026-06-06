package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNeogrubLinuxPost(): Post {
    return Post(
        "neogrub-linux",
        "NeoGrub Linux",
        "2022-02-26",
        "使用NeoGrub在Windows Vista/7/8引导加载器中添加Linux启动项，无需安装GRUB到MBR。",
        { b =>
            p(b, "NeoGrub在向Windows Vista/7/8引导加载器添加*nix操作系统时特别有用，无需安装GRUB或Lilo到任何地方——不用安装到引导扇区，更不用安装到MBR。")
            h2(b, "NeoGrub配置示例")
            p(b, "以下是一个用于启动Ubuntu的menu.lst配置示例，兼容几乎所有其他Linux发行版：")
            p(b, "title Ubuntu")
            p(b, "find --set-root /boot/vmlinuz-2.6.17-10-generic")
            p(b, "kernel /boot/vmlinuz-2.6.17-10-generic ro root=/dev/sda2")
            p(b, "initrd /boot/initrd.img-2.6.17-10-generic")
            p(b, "NeoGrub会显示一个包含一个条目（Ubuntu）的菜单。选择Ubuntu后，它会尝试找到第二个硬盘的第二个分区并从中启动。")
            h2(b, "需要修改的参数")
            p(b, "你需要修改以下内容使其在你的机器上工作：将所有2.6.17-10-generic替换为你当前的内核版本。你可以浏览/boot/文件夹找到正确的版本号，或者在Linux中使用uname命令。")
            p(b, "将/dev/sda2替换为你的根分区（/）的正确名称。")
            h2(b, "与GRUB的关系")
            p(b, "由于NeoGrub使用GRUB作为基础框架，你可以参考官方GRUB文档来获取具体的语法帮助。任何在GRUB中可用的代码在NeoGrub中都能正常工作。但你不能在GRUB中使用NeoGrub的代码，因为NeoGrub有一些GRUB原版不支持的额外功能。")
            a(b, attrs("href", "https://neosmart.net/wiki/easybcd/neogrub/linux/"), "阅读原文")
        }
    )
}
