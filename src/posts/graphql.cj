package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGraphqlPost(): Post {
    return Post(
        "graphql",
        "一文看懂 GraphQL 是什么？都有哪些优缺点 - 红帽",
        "2024-02-03",
        "红帽详细介绍 GraphQL 的定义、术语、优缺点，以及与开源生态的关系。",
        { b =>
            h2(b, "一文看懂 GraphQL 是什么？都有哪些优缺点")
            p(b, "GraphQL 是一种用于应用编程接口（API）的查询语言和服务器端运行时，它可以使客户端准确地获得所需的数据，没有任何冗余。GraphQL 旨在让 API 变得快速、灵活并且为开发人员提供便利，作为 REST 的替代方案，允许开发人员通过单个 API 调用从多个数据源中提取数据。")
            h2(b, "常见术语")
            p(b, "GraphQL 模式由对象类型组成，表示可以请求哪种对象以及它有哪些字段。有查询时，GraphQL 会根据模式对查询进行验证并执行。每个字段附加到名为解析器的函数中，执行时调用解析器生成相应值。GraphQL 对存储数据的方式或使用的编程语言没有限制，支持 PHP、Scala、Python、Ruby、JavaScript 等。")
            h2(b, "GraphQL 的优点")
            p(b, "GraphQL 模式设置单一事实来源，为企业提供整合整个 API 的方法。一次往返通讯可处理多个 GraphQL 调用，客户端只得到所请求的内容，不会超量。严格定义的数据类型减少通信错误。GraphQL 具有自检功能，客户端可以请求可用数据类型的列表，非常适合自动生成文档。")
            p(b, "GraphQL 允许应用 API 进行更新优化而无需破坏现有查询。许多开源 GraphQL 扩展可提供 REST API 所不具备的功能。GraphQL 不指定特定的应用架构，能够以现有 REST API 为基础，并与现有 API 管理工具配合使用。")
            h2(b, "GraphQL 的缺点")
            p(b, "即便是熟悉 REST API 的开发人员也需要一定时间才能掌握 GraphQL。GraphQL 将数据查询的大部分工作转移到服务器端，增加了服务器开发人员工作的复杂度。缓存机制比 REST 更加复杂，API 维护人员还面临编写可维护 GraphQL 模式的额外任务。")
            h2(b, "GraphQL 与开源")
            p(b, "GraphQL 由 Facebook 开发，2012 年首次应用于移动应用，2015 年实现开源，现受 GraphQL 基金会监管。相关开源项目包括 Apollo（前端客户端和后端服务器框架）、Offix（离线客户端）、Graphback（生成支持 GraphQL 的 Node.js 服务器）、OpenAPI-to-GraphQL（将 OpenAPI 规范转换为 GraphQL）等。")
            a(b, attrs("href", "https://www.redhat.com/zh/topics/api/what-is-graphql"), "阅读原文")
        }
    )
}
