package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog28Post(): Post {
    return Post(
        "blog-28",
        "为什么我们最终抛弃 Chromium 选择了 Firefox",
        "2021-08-13",
        "Cliqz 公司分享为什么基于 Firefox 而非 Chromium 构建浏览器，从价值观、技术、生态等角度分析两者的优劣。",
        { b =>
            p(b, "2015 年，一家公司发布了在 Firefox 基础之上构建的桌面 Web 浏览器。本文介绍为什么他们认为有必要创建自己的浏览器，为什么选择了 Firefox 以及为什么认为这是正确的决定。")
            h2(b, "为什么创建自己的浏览器")
            p(b, "搜索是 Web 浏览体验不可或缺的一部分。浏览器是发行搜索产品的主要方式。此外，拥有平台对于维持用户体验的控制非常重要。主流浏览器对用户隐私的关注十分有限，用户的数据被收集后放到市场上出售。他们希望在浏览器中贯彻应用隐私设计。")
            h2(b, "为什么没有选择 Chromium")
            p(b, "与 Google 相比，他们更认可 Mozilla 的生存信念。考虑到垄断问题，支持 Firefox 更有意义——如果所有浏览器都使用 Blink，Web 将受到重创。")
            p(b, "技术上：Firefox 提供了浏览器方方面面的开放 API，大部分应用代码都用 JavaScript 编写。Chromium 不会暴露某些 Google 业务敏感的区域，比如地址栏。Chromium 自带很多无法轻易删除的 Google 服务。")
            p(b, "Chromium 的 API 更改缺乏持续性和一致性。以 Manifest v3 为例，可能淘汰加强隐私的插件所依赖的强大 API。")
            h2(b, "Firefox 的优势")
            p(b, "Firefox 非常适合进行分支：UI 能通过 CSS 定制主题；模块化、基于 pref 的体系结构易于配置；建立在 Web 技术之上；对重新打包发行有一流支持；支持强大的扩展；允许通过配置脚本进行深度定制。")
            h2(b, "Android 和 iOS 上的实现")
            p(b, "Android 上使用 GeckoView 构建浏览器，可以运行 WebExtensions 发布共享 JavaScript 代码库。iOS 上基于 Firefox 建立分支，使用 React Native 创建混合应用来提供隐私功能。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_42232219/article/details/103740453"), "阅读原文")
        }
    )
}
