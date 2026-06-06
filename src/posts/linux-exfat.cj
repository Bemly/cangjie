package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxExfatPost(): Post {
    return Post(
        "linux-exfat",
        "（实例）Linux 内核添加exfat驱动 - 黄树超 - 博客园",
        "2021-01-18",
        "由于exfat是常用的文件系统格式，而Linux由于版权问题没有在官方中添加有关驱动，本文演示两种添加exfat驱动的方法。",
        { b =>
            h2(b, "（实例）Linux 内核添加exfat驱动")
            p(b, "由于exfat是常用的文件系统格式，而Linux由于版权的问题，没有在官方中添加有关的驱动。但是微软也同意开源了，所以比较新的Linux会支持这一块。为了支持exfat的驱动，我们需要手动添加第三方的驱动支持。本文演示2种添加exfat格式的驱动的方法，而不将驱动编译进内核。")
            p(b, "驱动来源：https://github.com/arter97/exfat-linux。准备步骤：下载exfat驱动（git clone），准备Linux内核源码，配置内核编译用的gcc。由于实际编译的时候提示了函数重定义错误，所以需要注释掉冲突的代码。")
            h3(b, "方法一：放入Linux内核源码中编译")
            p(b, "根据README.md中\"Merging the drivers to existing Linux kernel source\"这一章的内容：首先拷贝驱动源码到内核对应的位置中（cp exfat-linux ~/linux3.18_module_in/fs/exfat），然后修改exfat同级目录中的Kconfig和Makefile。")
            p(b, "Kconfig：在\"source/fs/fat/Kconfig\"之后添加 source \"fs/exfat/Kconfig\"。Makefile：在\"obj-$(CONFIG_FAT_FS) += fat/\"之后添加 obj-$(CONFIG_EXFAT_FS) += exfat/。")
            p(b, "配置并编译内核：make ARCH=arm CROSS_COMPILE=arm-hisiv500-linux- menuconfig，根据实际情况按Y（配置进内核）或M（配置成模块），然后执行make modules进行编译。编译完成后拷贝驱动到开发板中加载测试即可。")
            h3(b, "方法二：独立编译")
            p(b, "根据《Linux 内核 编译模块》中参考的Makefile，参考驱动源码中的Makefile做修改。由于exfat驱动的编译不单单是一个文件，所以需要添加依赖关系。")
            p(b, "Makefile内容：obj-m += exfat.o，exfat-objs := super.o core.o core_exfat.o blkdev.o fatent.o cache.o nls.o misc.o extent.o xattr.o，设置KERNELDIR和CROSS_COMPILE路径，然后执行make即可。")
            p(b, "两种方式都生成了exfat.ko文件，可以正常使用。作者发现根据不同方式生成的ko文件大小和内容上都有小的差异，一个是114K，一个是115K。")
            a(b, attrs("href", "https://www.cnblogs.com/schips/p/12305534.html"), "阅读原文")
        }
    )
}
