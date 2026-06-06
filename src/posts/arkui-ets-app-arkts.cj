package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArkuiEtsAppArktsPost(): Post {
    return Post(
        "arkui-ets-app-arkts",
        "ArkUI eTS app 沉浸式(全屏)状态栏透明设置",
        "2024-03-16",
        "在HarmonyOS 3.0中使用ArkUI实现App全屏沉浸式模式，包括隐藏标题栏和设置系统栏透明",
        { b =>
            h2(b, "ArkUI eTS app 沉浸式(全屏)状态栏透明设置")
            p(b, "HarmonyOS 3.0已经全面使用ArkUI开发app。作为入门新手，app全屏沉浸式模式花了不少时间才弄清楚。基于ArkUI开发方式的实现方法，网上没有完整的案例，需要仔细查看HarmonyOS开发文档中的窗口开发指导。")
            p(b, "要实现界面沉浸式，大致分为两步：")
            p(b, "第一步：隐藏标题栏。在项目工程的模块级config.json文档model模块的abilities属性下面设置metaData，添加hwc-theme为androidhwext:style/Theme.Emui.Light.NoTitleBar。")
            p(b, "第二步：设置全屏、透明状态栏、隐藏导航栏。eTS代码实现中，选择在app.ets文件的app加载时设置相关代码。获取窗口的API接口是异步的，所以获取窗口后要在回调中设置全屏、透明、隐藏等相关工作。")
            p(b, "核心代码流程：首先通过window.getTopWindow获取主窗口，然后调用setSystemBarEnable设置导航栏和状态栏的可见模式，再调用setLayoutFullScreen(true)设置全屏布局，最后通过setSystemBarProperties设置状态栏背景色为透明(#00ff0000)。")
            p(b, "其中状态栏属性包括statusBarColor（状态栏背景色）、isStatusBarLightIcon（图标亮暗模式）和statusBarContentColor（内容颜色，API Version 8开始支持）。")
            a(b, attrs("href", "https://blog.csdn.net/cbdg3757/article/details/127104358"), "阅读原文")
        }
    )
}
