package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCjkttyPost(): Post {
    return Post(
        "cjktty",
        "记录一下树莓派打内核补丁cjktty的天坑-CSDN博客",
        "2024-08-10",
        "在树莓派Zero2W上编译Linux内核并添加cjktty中文补丁的实践记录，包括选择内核版本、下载补丁、配置menuconfig和编译过程",
        { b =>
            h2(b, "cjktty补丁下载")
            p(b, "cjktty补丁的下载地址在https://github.com/zhmars/cjktty-patches，需要根据自己的Linux内核版本去选择对应的补丁。下载好补丁文件后还需要下载完整的Linux内核源码，地址在https://github.com/raspberrypi/linux。")
            h2(b, "打补丁")
            p(b, "在Linux内核源码目录下执行打补丁命令：patch -Np1 -i < xxx.patch。注意必须在Linux内核源码的目录下执行此命令。")
            h2(b, "选择内核配置")
            p(b, "作者使用的是树莓派Zero2W，且用32位系统。根据树莓派官方文档，Raspberry Pi 2、3、3+和Zero 2 W的默认32位构建配置为：KERNEL=kernel7，使用make bcm2709_defconfig。选择2709是因为Zero2W与Pi 3一样使用bcm2709处理器。")
            h2(b, "配置menuconfig")
            p(b, "运行make menuconfig后需要将以下模块编链到内核：Device drivers -> Graphics support -> Framebuffer device support中的Vesa VGA graphics support。Library routines中勾选Select compiled-in fonts，然后选中console 16x16 CJK font (cover BMP)和CJK 32x32 font。")
            h2(b, "编译安装")
            p(b, "由于是直接在树莓派Zero2W上编译，速度非常慢。执行sudo make -j2进行编译，然后sudo make modules_install -j2安装模块，最后sudo make install -j2安装内核。")
            p(b, "编译过程中会遇到各种坑，作者作为Linux纯小白花了很长时间才搞明白整个流程。主要的难点在于理解内核版本选择、补丁应用和menuconfig配置之间的关系。")
            h2(b, "总结")
            p(b, "cjktty补丁可以让Linux内核的TTY终端支持UTF-8编码，从而在纯文本终端下显示中文字符。在树莓派上编译内核需要耐心，特别是在资源有限的Zero2W上直接编译，速度很慢且容易遇到各种问题。")
            a(b, attrs("href", "https://blog.csdn.net/jd3096/article/details/132470062"), "阅读原文")
        }
    )
}
