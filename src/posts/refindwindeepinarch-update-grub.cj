package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRefindwindeepinarchUpdateGrubPost(): Post {
    return Post(
        "refindwindeepinarch-update-grub",
        "rEFind配置忽略项以及主题～win/deepin/arch",
        "2021-10-02",
        "在Deepin系统上安装rEFInd的步骤，配置refind.conf去除不必要的启动项，并应用rEFInd主题美化引导界面。",
        { b =>
            p(b, "关于安装rEFInd，折腾了大半天终于给它装上了。grub用着没啥问题，就是看大家都有界面，就想试一试rEFInd。")
            h2(b, "配置文件")
            p(b, "配置文件refind.conf在安装refind目录 /boot/efi/EFI/refind/refind.conf 下，#号开头表示注释，有的配置就是把#去掉。")
            h2(b, "参数解读")
            p(b, "默认扫描设置会将Linux内核以及Windows Boot Manager显示在引导界面，为了屏蔽这些不需要的启动项，需要进行如下设置：")
            p(b, "timeout：设置默认等待时间20s，时间到后进入默认操作系统，0表示一直等待选择，-1表示进入默认的系统。screensaver：进入引导前的屏保时间，通常不启用。")
            p(b, "hideui隐藏界面功能选项：banner（rEFInd标识图）、label（文字描述及倒计时器）、singleuser（苹果单用户选项）、safemode（苹果安全模式）、hwtest（Mac硬件测试）、arrows（左右指示箭头）、hints（按键简要说明）、editor（选项编辑器）。")
            p(b, "icons_dir：指定自定义图标目录。resolution：屏幕分辨率。default_selection：默认进入的系统选项。include：引导界面美化常用。")
            p(b, "dont_scan_dirs、dont_scan_files、dont_scan_volumes：设置引导器过滤哪些目录、文件、卷类型（分区）。")
            h2(b, "主题美化")
            p(b, "可以从GitHub获取并应用rEFInd主题来美化引导界面。设置timeout为2秒即可，其他的主题美化基本都会处理。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_43031092/article/details/113870562"), "阅读原文")
        }
    )
}
