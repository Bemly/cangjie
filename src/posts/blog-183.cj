package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog183Post(): Post {
    return Post(
        "blog-183",
        "编程词典 - 编程导航",
        "2023-04-16",
        "编程导航旗下的编程词典，收录前端、后端、数据库等技术词条的百科全书。",
        { b =>
            h2(b, "编程词典")
            p(b, "编程词典是编程导航（code-nav.cn）旗下的技术百科全书，收录了前端、后端、数据库等各个领域的技术词条。每个词条都有详细的解释和示例，帮助开发者快速了解各种编程概念。")
            h2(b, "前端热门词条")
            p(b, "HTML（HyperText Markup Language）超文本标记语言，是一种用于创建网页的语言。通过使用 HTML，Web 开发人员可以描述网页上的内容和结构。Vue.js 是一个渐进式 JavaScript 框架，利用它来构建用户界面是十分方便的，它旨在通过简单的 API 开发人员能够快速上手。")
            p(b, "WebPack 是一个模块化打包工具，是前端工程化过程中最重要的构建工具之一。React 是由 Facebook 推出的一款流行的 JavaScript 前端框架，它使用组件化的思想来构建用户界面。Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境，能够使 JavaScript 脱离浏览器运行在服务端。")
            p(b, "Angular 是一款开源的 Web 前端框架，由 Google 维护和开发，具有强大的功能和灵活的可扩展性。前端自动化构建工具可以有效地提高开发效率和代码质量，自动化完成代码转换、文件合并、压缩混淆等重复工作。")
            h2(b, "后端与数据库")
            p(b, "Java 词典涵盖 JavaFX 图形化界面、Netty 框架、Spring 框架、Lambda 表达式、Quartz 框架、注解、枚举类型、JDBC 数据库连接技术、JUnit 单元测试、接口等词条。Go 词典涵盖切片、反射、垃圾回收器、chan、GC、闭包、panic、协程、调度器等词条。")
            p(b, "数据库词典涵盖 SQL 语言、SQL 注入攻击、Redis、MongoDB、Hadoop、数据恢复、数据库分库分表、非关系型数据库、视图（View）、数据库管理系统等词条。")
            h2(b, "站长信息")
            p(b, "站长为程序员鱼皮，编程导航提供免费教程、实战项目、学习交流、求职面经、职场指南、最新资讯、直播分享、大厂导师答疑解惑等服务。")
            a(b, attrs("href", "http://dict.code-nav.cn/"), "访问编程词典")
        }
    )
}
