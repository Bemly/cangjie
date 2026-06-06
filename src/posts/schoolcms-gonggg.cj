package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSchoolcmsGongggPost(): Post {
    return Post(
        "schoolcms-gonggg",
        "SchoolCMS学校管理系统项目 - 龚哥哥的博客",
        "2023-04-12",
        "SchoolCMS 是一个简单而强大的学校内容管理系统，建站更快速。",
        { b =>
            h2(b, "SchoolCMS学校管理系统项目")
            p(b, "SchoolCMS 简单而强大的学校内容管理系统、建站更快速！依托新版 SchoolCMS 的功能优势和命名空间的特性，官方七年磨一剑，用心打造。更高，更快，更强，建站更简单！")
            p(b, "提供的稳健的安全策略，包括备份恢复，容错，防止恶意攻击登陆，网页防篡改等多项安全管理功能，保证系统安全，可靠，稳定的运行。")
            p(b, "代码遵循 Apache2 开源协议，并且免费使用，对商业用户友好。SchoolCMS 将成为学校管理系统另一面国产开源旗舰产品。")
            p(b, "官方应用仓库拥有大量的第三方的插件和应用模块、模板主题，众多来自开源社区的贡献，让你的网站完美无缺！")
            a(b, attrs("href", "https://gitee.com/zongzhige/schoolcms"), "下载地址（Gitee）")
            p(b, "")
            a(b, attrs("href", "https://gong.gg/post-51.html"), "阅读原文")
        }
    )
}
