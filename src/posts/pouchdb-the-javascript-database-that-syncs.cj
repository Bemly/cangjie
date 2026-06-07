package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPouchdbTheJavascriptDatabaseThatSyncsPost(): Post {
    return Post(
        "pouchdb-the-javascript-database-that-syncs",
        "PouchDB, the JavaScript Database that Syncs!",
        "2024-08-17",
        "PouchDB 是一个受 Apache CouchDB 启发的开源 JavaScript 数据库，专为浏览器环境设计，支持离线数据存储与在线同步。",
        { b =>
            h2(b, "什么是 PouchDB")
            p(b, "PouchDB 是一个受 Apache CouchDB 启发的开源 JavaScript 数据库，专为在浏览器中良好运行而设计。PouchDB 的创建目的是帮助 Web 开发者构建在线和离线体验同样优秀的应用程序。")
            p(b, "它使应用程序能够在离线时将数据存储在本地，然后在应用程序恢复在线时与 CouchDB 及兼容服务器进行同步，无论用户下次在哪里登录，都能保持数据同步。")
            h2(b, "核心特性")
            p(b, "跨浏览器支持：PouchDB 可在 Firefox、Chrome、Opera、Safari、IE 和 Node.js 中运行。轻量级：在浏览器中只需一个 script 标签，压缩后仅 46KB；在 Node.js 中通过 npm install pouchdb 即可安装。易于学习：虽然需要一些编程知识，但 PouchDB 非常容易上手。完全开源：所有开发都在 GitHub 上公开进行，欢迎贡献者参与。")
            h2(b, "基本用法")
            p(b, "PouchDB 的 API 非常简洁直观。创建一个数据库实例只需 const db = new PouchDB('dbname')，然后使用 db.put() 方法插入文档，使用 db.changes() 监听数据变化，使用 db.replicate.to() 将数据同步到远程 CouchDB 服务器。")
            h2(b, "离线优先设计")
            p(b, "PouchDB 采用了离线优先（Offline-First）的设计理念。这意味着应用程序首先假设网络不可用，将数据存储在本地 IndexedDB 或 LevelDB 中。当网络恢复时，PouchDB 会自动处理与远程服务器的数据同步，确保数据一致性。这种设计模式特别适合移动设备和网络不稳定的环境。")
            h2(b, "与 CouchDB 的同步")
            p(b, "PouchDB 的核心优势在于与 CouchDB 的无缝同步能力。CouchDB 是一个面向文档的 NoSQL 数据库，支持多主复制。PouchDB 实现了 CouchDB 的同步协议，使得浏览器中的数据可以与服务器端的 CouchDB 数据库进行双向同步。")
            p(b, "这种同步机制不仅适用于 CouchDB，还兼容任何实现了 CouchDB 同步协议的服务器，如 IBM Cloudant、PouchDB Server 等。开发者可以根据需求选择合适的后端服务器。")
            h2(b, "最新版本")
            p(b, "PouchDB 9.0.0 于 2024 年 5 月 24 日发布，这是一个重大版本，自上一版本以来合并了 202 个 PR。此前的 8.0.1 版本于 2023 年 2 月 9 日发布，修复了上一版本重构中引入的一个 bug。")
            a(b, attrs("href", "https://pouchdb.com/"), "阅读原文")
        }
    )
}
