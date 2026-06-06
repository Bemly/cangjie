package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRefindPost(): Post {
    return Post(
        "refind",
        "rEFInd去掉不必要的启动项",
        "2022-02-28",
        "在UEFI环境下优化Refind引导器，精简启动选项、设置启动时间，提供更简洁高效的多系统引导方案。",
        { b =>
            p(b, "refind是UEFI环境下使用的引导器，如果一台设备上有N个系统，那么有必要了解refind如何来引导。但因为默认的引导效果是非常杂乱的，需要做一些优化工作。")
            h2(b, "一、安装refind")
            p(b, "安装refind后，编辑 /boot/efi/EFI/refind/refind.conf 配置文件。")
            h2(b, "二、去掉不必要的启动项")
            p(b, "在refind.conf最后加上以下配置：")
            p(b, "dont_scan_dirs \\efi\\boot — 不扫描boot目录。scan_all_linux_kernels false — 不加载所有的Linux内核。")
            p(b, "设置之后，refind只保留我们所想要的启动项了。")
            h2(b, "三、设置启动时间为0")
            p(b, "从refind的菜单进入mac之后是clover，进入Linux是grub2，所以必须把默认时间改为0，这样refind才算完美。")
            p(b, "macOS方面：clover的修改可以借助Clover Configurator，很方便的修改启动时间。")
            p(b, "Linux方面：执行 sudo vim /etc/grub.d/30_os-prober 修改 set timeout=0，然后 sudo gedit /etc/default/grub 修改 GRUB_TIMEOUT=0，最后执行 sudo update-grub 更新配置。")
            a(b, attrs("href", "https://blog.csdn.net/qq_41601836/article/details/106504097"), "阅读原文")
        }
    )
}
