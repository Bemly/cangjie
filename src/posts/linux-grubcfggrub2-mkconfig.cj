package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxGrubcfggrub2MkconfigPost(): Post {
    return Post(
        "linux-grubcfggrub2-mkconfig",
        "linux修改grub.cfg开机启动参数后使用grub2-mkconfig命令还是无效",
        "2021-10-02",
        "详细介绍如何在UEFI启动模式下正确修改GRUB配置文件，确保系统启动参数生效。",
        { b =>
            p(b, "在修改 /etc/default/grub 后，通常使用 grub2-mkconfig -o /boot/grub2/grub.cfg 来重新生成配置文件。但重启后发现开机按e键，启动参数还是没有改变。")
            p(b, "这是因为需要检查电脑的启动模式。LEGACY启动模式的配置文件路径是 /boot/grub2/grub.cfg，而UEFI启动模式的配置文件路径是 /boot/efi/EFI/centos/grub.cfg。")
            p(b, "如果你的电脑是UEFI启动模式，应该使用以下命令：grub2-mkconfig -o /boot/efi/EFI/centos/grub.cfg，然后重启即可生效。")
            h2(b, "GRUB2配置文件关系")
            p(b, "/boot/grub/grub.cfg 是grub2真正的配置文件，它在每次update-grub后自动生成，默认只读的，我们不应该更改它，而是应该通过修改 /etc/default/grub 来间接地更改它。")
            p(b, "/etc/default/grub 是用户修改grub2的入口，修改后需要运行 grub2-mkconfig 来重新生成 /boot/grub/grub.cfg。/etc/grub.d/ 目录下有一些grub配置脚本，这些shell脚本负责生成具体的启动菜单项。")
            h2(b, "grub2-mkconfig命令详解")
            p(b, "grub2-mkconfig是任何Linux发行版中最重要的组件之一。用法：grub2-mkconfig [OPTION]，-o FILE 选项将生成的配置输出到指定文件。")
            p(b, "如果出现错误 Cannot find a GRUB drive for /dev/sda1，请执行 grub2-install --recheck /dev/sda 来修复。")
            h2(b, "grub.cfg丢失修复")
            p(b, "当grub.cfg文件丢失时，可以通过系统镜像进入救援模式，使用 chroot /mnt/sysmount 切换环境后，执行 grub2-mkconfig -o /boot/grub2/grub.cfg 重新生成配置文件。")
            a(b, attrs("href", "https://blog.csdn.net/daoba_wolf/article/details/106805080"), "阅读原文")
        }
    )
}
