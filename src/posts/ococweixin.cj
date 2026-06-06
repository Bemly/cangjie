package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOccWeixinPost(): Post {
    return Post(
        "ococweixin",
        "小白教你如何生成适配你机型的OC引导",
        "2021-11-11",
        "通过OCGen-X软件轻松完成OC(OpenCore)引导的配置，简化黑苹果引导制作工序。",
        { b =>
            p(b, "今天要给大家带来好东西了！轻轻松松搞定OC引导的制作工序！借助一款叫OC Gen-X的软件，实现OC引导傻瓜式制作。")
            h2(b, "设置CPU平台")
            p(b, "打开软件后第一步需要设置CPU平台，和做缓冲帧时选择的平台一致。例如7代CPU选择Coffee Lake。")
            h2(b, "选择kext驱动")
            p(b, "lilu.kext是驱动依赖，必须选。virtualSMC.kext及其后面的VirtualSMC Plugins是仿冒苹果SMC设备的驱动及其配套传感器驱动。")
            p(b, "whateverGreen是显卡驱动，包含核显和独显，不想引导时黑屏就选它。下面的WhateverGreen Boot-Args是显卡引导参数，把clover config.plist中关于显卡的引导参数复制进去，多个参数用空格隔开。")
            p(b, "Audio是声卡驱动，勾选后输入声卡ID。Ethernet是有线网卡驱动，选择对应牌子的驱动即可。USB是USB注入驱动，有了它USB鼠标才能使用。")
            p(b, "WiFi and Bluetooth选择需要的驱动，比如DW1820A需要全选4个驱动。Extra's的驱动用于CPU与传感器之间协调作用，建议勾选。")
            h2(b, "其他设置")
            p(b, "Firmware Drivers是OC的运行驱动，按默认来即可。SMBIOS是机型设置，把clover上的信息一一对应填入即可。Additional BootArgs是添加引导参数，把clover的引导参数搬过来，不同参数之间用空格隔开。")
            p(b, "全部设置完毕后，点击Generate EFI即可在桌面生成OC引导文件，完成80%。还需要用propertree对config.plist进行一些小改动才能使用。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_39752087/article/details/110302153"), "阅读原文")
        }
    )
}
