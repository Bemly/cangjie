package bemlyCJWeb

func getJavaverseChatPost(): Post {
    return Post(
        "javaverse-chat",
        "Java 聊天室开发心得",
        "2023-06-30",
        "用 Java 写了个简陋的聊天室，支持 TCP/WebSocket 多种通信方式，踩了不少坑。",
        """
            <p>一个简陋的聊天室实现，采用Java编写，随手做的，非本机环境编写，环境懒得配了就没有使用Maven，库放在项目的jar文件夹里面了。</p>

            <h2>开发环境</h2>
            <p>先叠甲，这个是随便做的，其次做的时候是用的校园环境，所以说每个过程都非常繁杂且古早。</p>
            <p>数据库采用更加古早的版本，JDBC用的mysql-connector-5.1.13桥梁，MySQL用的远古5.1.47社区版，Navicat for MySQL也不知道是从哪个包浆软件提供商搞来的。环境是JavaSE 1.8，新版jar包基本上都能兼容可还行，目前java8的地位还是可以的。IDE也是超级古老的Eclipse Luna和Microsoft Visual Studio 2010。</p>
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/sql_version_low.avif" alt="MySQL版本" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/eclipse_version_low.avif" alt="Eclipse版本" style="max-width:100%">

            <p>主题用的JTatto，目前写了websocket方式、TCP自创上层协议方式收发数据，载体也分了直接使用字节流读取前字节来区分数据信息和直接采用JSON序列/反序列化发送消息的方式。<strong>代码全部使用GBK编码编写，注意查看的时候要以GBK为编码</strong></p>

            <h2>项目分支</h2>
            <ul>
                <li><strong>TCP-json</strong>：利用TCP+主流JSON数据结构传输数据</li>
                <li><strong>WebSocket-json</strong>：利用WebSocket+主流JSON数据结构传输数据</li>
                <li><strong>TCP-streamText</strong>：利用TCP识别字节流前几位再识别文本内容传输数据</li>
            </ul>
            <p><strong>TODO</strong>：现在都是MySQL，之后学完MongoDB，做完Swing DIY GUI再来重构</p>

            <h2>项目快照</h2>
            <h3>1. 主页面</h3>
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Main_Frame_Bot_GUI.avif" alt="Bot界面" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Main_Frame_Chat_GUI.avif" alt="聊天界面" style="max-width:100%">

            <h3>2. 后台输出</h3>
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Background_output.avif" alt="后台输出1" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Background_output2.avif" alt="后台输出2" style="max-width:100%">

            <h3>3. 数据库</h3>
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db1.avif" alt="数据库展示" style="max-width:100%">

            <h3>4. 设计图</h3>
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db2.avif" alt="设计图1" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db3.avif" alt="设计图2" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230701010311479.avif" alt="设计图3" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/clip_image002.avif" alt="设计图4" style="max-width:100%">
            <img data-src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230701010523553.avif" alt="设计图5" style="max-width:100%">

            <h2>踩坑记录</h2>
            <h3>1. GBK编码问题</h3>
            <p>代码全部使用GBK编码编写，在不同系统上打开时要注意编码设置，否则中文会乱码。</p>

            <h3>2. 字节流解析</h3>
            <p>TCP通信时，直接使用字节流读取前几位来区分数据信息，这种方式简单但容易出错，需要严格约定协议格式。</p>

            <h3>3. JSON序列化</h3>
            <p>使用JSON序列/反序列化发送消息更可靠，但要注意字段类型的一致性。</p>

            <h2>引用</h2>
            <ul>
                <li><a href="https://www.cnblogs.com/stulzq/p/17271937.html">晓晨Master：使用 Azure OpenAI 打造自己的 ChatGPT</a></li>
                <li><a href="https://github.com/Richasy/FantasyCopilot">Richasy：Fantasy Copilot</a></li>
            </ul>
        """
    )
}
