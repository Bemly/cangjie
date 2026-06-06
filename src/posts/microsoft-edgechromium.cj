package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMicrosoftEdgechromiumPost(): Post {
    return Post(
        "microsoft-edgechromium",
        "[注册表] 一键设置Microsoft Edge经典版与Chromium版共存不会替代 – 蓝点网",
        "2021-08-30",
        "微软已经推出Edge Chromium正式版并开始向所有用户推送，按计划经典版Edge会被直接替代。本文介绍通过注册表让新旧版Edge共存的方法。",
        { b =>
            h2(b, "[注册表] 一键设置Microsoft Edge经典版与Chromium版共存不会替代 – 蓝点网")
            p(b, "微软目前已经推出Microsoft Edge based Chromium浏览器正式版并开始向所有用户推送这个新版本的浏览器。按微软计划当用户主动安装或者被推送安装新版浏览器后，经典版的Microsoft Edge浏览器就会被直接替代掉。")
            p(b, "此时用户若是再想使用经典版的Microsoft Edge就无法调出，但是毕竟有的用户还想试试这个经典版的浏览器。蓝点网此前已经介绍通过组策略让浏览器共存运行，遗憾的是微软到现在还是没有推出组策略模板导致无法设置。")
            p(b, "所以现在我们给大家带来通过注册表替代组策略的方式，只需要新建注册表项和键值即可轻松让浏览器们共存。")
            h3(b, "注册表资源下载和使用注意事项")
            p(b, "1.Microsoft Edge浏览器新旧版可同时安装注册表可从蓝点网下载。")
            p(b, "2.请注意：在合并注册表前必须提前卸载Microsoft Edge based Chromium浏览器，若未卸载合并注册表无效。")
            p(b, "3.压缩包内分别提供「开启浏览器共存」和「关闭浏览器共存」，若无需使用经典版本则请合并关闭共存注册表。")
            p(b, "4.在卸载已安装的新版浏览器和合并开启浏览器共存注册表后，转到Microsoft Edge官网下载正式版安装即可。")
            p(b, "5.安装后在开始菜单会自动出现「Microsoft Edge旧版」，这里自动生成的旧版指的就是UWP版经典版浏览器。")
            h3(b, "手动修改注册表实现共存")
            p(b, "如果你喜欢动手的话也可以自己修改注册表键值来实现共存，但是在修改前同理需要先卸载已安装的新版浏览器。")
            p(b, "卸载已安装的新版浏览器后请打开注册表并转到以下位置：")
            raw(b, "<blockquote>计算机\\HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\</blockquote>")
            p(b, "右键点击左侧导航栏的Microsoft然后新建项并重命名为EdgeUpdate，然后右键点击EdgeUpdate新建DWORD32位值并重命名为Allowsxs，双击将其默认值修改为：1代表开启浏览器共存，0代表关闭浏览器共存。")
            p(b, "注：本文使用的方法来自Techdows，但原文中将共存注册表键值设置为0导致设置不生效，应该是编辑的笔误。")
            a(b, attrs("href", "https://www.landian.vip/archives/69290.html"), "阅读原文")
        }
    )
}
