package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIdeaBug1073741819Post(): Post {
    return Post(
        "idea-bug-1073741819",
        "IDEA 惊天 bug：进程已结束，退出代码 1073741819",
        "2023-05-01",
        "IDEA 运行 Undertow 程序时非正常退出，退出代码 1073741819，最终发现是金山词霸划词翻译导致的冲突。",
        { b =>
            p(b, "由于昨天要写的文章没有写完，于是今天早上我四点半就\"自然醒\"了，心里面有事，睡觉也不安稳。洗漱完毕后，我打开电脑，正襟危坐，摆出一副要干架的态势，不能再拖了。")
            p(b, "要写的文章中涉及到一串代码，关于 Undertow 的一个入门示例。Undertow 是大名鼎鼎的 Red Hat（红帽子）公司开发的一款基于 NIO 的高性能 Web 服务器软件，不需要单独安装软件，只需要几行代码就可以在 Java 应用程序中启动一个 Web 服务。")
            raw(b, "<pre><code>public class UndertowTest {\n    public static void main(final String[] args) {\n        Undertow server = Undertow.builder()\n                .addHttpListener(8080, \"localhost\")\n                .setHandler(new HttpHandler() {\n                    @Override\n                    public void handleRequest(final HttpServerExchange exchange) throws Exception {\n                        exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, \"text/plain\");\n                        exchange.getResponseSender().send(\"Hello World\");\n                    }\n                }).build();\n        server.start();\n    }\n}</code></pre>")
            p(b, "没想到，代码在 IDEA 中运行后，竟然非正常退出了！没有任何错误提示。主机名 localhost 没有问题，端口 8080 也没有被占用，但 main 方法在没有任何外力的因素下直接结束了。")
            p(b, "回看 Run 面板中的输出信息，唯一让我感到疑惑的就是这行：进程已结束,退出代码-1073741819 (0xC0000005)。正常来说程序执行的输出应该是进程已结束,退出代码0。")
            p(b, "我第一时间想到的原因是，会不会是我代码写错了？于是查看了 Undertow 的官网，一个单词一个单词的检查，甚至上了 beyond compare 进行比较，也没有找到任何可疑之处。")
            p(b, "换了各种关键词，查阅了各种文章，没有找到可行的解决办法。谷歌无果，那就只能靠自己了。于是我写了一段简单的 Thread.sleep 代码来测试，结果大吃一惊——也是非正常退出，错误代码和之前的 Undertow 一致。")
            p(b, "搞什么嘛，这可是 Thread.sleep(10000000) 休眠大法啊，也能在一秒内结束，那一定不是 Undertow 的代码示例写错了，而是 IDEA 在作妖。")
            p(b, "事到如今，我想起了被打入冷宫的 Eclipse。同样的代码，进程没有立即结束掉。Undertow 的代码示例也没有问题，程序没有立即结束。在浏览器中输入 http://localhost:8080 也能正常访问。")
            p(b, "对比之后，问题就很确定了，出在 IDEA 身上。换了谷歌搜索关键词后，果然也有同行遇到了类似的问题，但文章中提到的原因竟然是金山词霸的划词翻译！")
            p(b, "虽然有点扯，但的确值得试一试。我的电脑上真的安装了金山词霸，并且是打开状态。退出金山词霸后，进程没有主动结束了——真的有用！")
            p(b, "经验一：保持冷静，切勿暴躁。经验二：先从自身代码找原因。经验三：问谷歌，不要问某度。经验四：换个环境试一试。经验五：搜索的时候换一下关键词。经验六：重复以上。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/1620688"), "阅读原文")
        }
    )
}
