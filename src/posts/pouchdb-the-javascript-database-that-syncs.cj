package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPouchdbTheJavascriptDatabaseThatSyncsPost(): Post {
    return Post(
        "pouchdb-the-javascript-database-that-syncs",
        "PouchDB, the JavaScript Database that Syncs!",
        "2024-08-17",
        "原文待补充：PouchDB, the JavaScript Database that Sy",
        { b =>
            h2(b, "PouchDB, the JavaScript Database that Syncs!")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://pouchdb.com/"), "阅读原文")
        }
    )
}
