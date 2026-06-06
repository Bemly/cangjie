package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavaverseChatPost(): Post {
    return Post(
        "javaverse-chat",
        "Java 聊天室开发心得",
        "2023-06-30",
        "用 Java 写了个简陋的聊天室，支持 TCP/WebSocket 多种通信方式，踩了不少坑。",
        { b =>
            p(b, "一个简陋的聊天室实现，采用Java编写，随手做的。")
            h2(b, "开发环境")
            p(b, "数据库采用古早版本，JDBC用的mysql-connector-5.1.13，MySQL用的远古5.1.47社区版。环境是JavaSE 1.8，IDE是Eclipse Luna和Visual Studio 2010。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/sql_version_low.avif", "alt", "MySQL版本", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/eclipse_version_low.avif", "alt", "Eclipse版本", "style", "max-width:100%"))
            h2(b, "项目快照")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Main_Frame_Chat_GUI.avif", "alt", "聊天界面", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Background_output.avif", "alt", "后台输出", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db1.avif", "alt", "数据库", "style", "max-width:100%"))
        }
    )
}
