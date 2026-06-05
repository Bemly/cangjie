package bemlyCJWeb

func getJavaverseChatPost(): Post {
    return Post(
        "javaverse-chat",
        "Java 聊天室 + Azure OpenAI GPT Bot",
        "2023-06-30",
        "一个简陋的聊天室实现，集成 Azure OpenAI GPT-3.5 Bot，支持 TCP/WebSocket 多种通信方式。",
        """
            <p>一个简陋的聊天室实现，采用Java编写，随手做的，非本机环境编写，环境懒得配了就没有使用Maven，库放在项目的jar文件夹里面了。</p>

            <h2>开发环境</h2>
            <p>先叠甲，这个是随便做的，其次做的时候是用的校园环境，所以说每个过程都非常繁杂且古早。AI Bot用的微软的Azure OpenAI GPT-3.5模型，在聊天室输入<code>/Bot + 内容</code>，就能和机器人对线了，SYSTEM/USER/ASSISTANT分别对应聊天规则的严格或者宽松，超过规则就会触发OpenAI的政策安全警告，返回400的报错码（别问我怎么知道的）。</p>
            <p>数据库采用更加古早的版本，JDBC用的mysql-connector-5.1.13桥梁，MySQL用的远古5.1.47社区版，Navicat for MySQL也不知道是从哪个包浆软件提供商搞来的。环境是JavaSE 1.8，新版jar包基本上都能兼容可还行，目前java8的地位还是可以的。IDE也是超级古老的Eclipse Luna和Microsoft Visual Studio 2010。</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/sql_version_low.avif" alt="MySQL版本" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/eclipse_version_low.avif" alt="Eclipse版本" style="max-width:100%">

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
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Main_Frame_Bot_GUI.avif" alt="Bot界面" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Main_Frame_Chat_GUI.avif" alt="聊天界面" style="max-width:100%">

            <h3>2. 后台输出</h3>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Background_output.avif" alt="后台输出1" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Background_output2.avif" alt="后台输出2" style="max-width:100%">

            <h3>3. 数据库</h3>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db1.avif" alt="数据库展示" style="max-width:100%">

            <h3>4. 设计图</h3>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db2.avif" alt="设计图1" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/db3.avif" alt="设计图2" style="max-width:100%">

            <h2>如何使用</h2>
            <h3>1. 获得Azure OpenAI的使用资格</h3>
            <p>首先去国际版Azure开通OpenAI服务，注意不要选<a href="https://www.azure.cn/">世纪互联</a>，这货现在还不支持azure openai服务，好消息是国际版的OpenAI是面向全球的包括中国，同时得益于微软Azure的功劳，这个API的使用国内是可以直连的，虽说需要付费但是免费第一个月的200美元配额还是挺香的。</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Dont_choose_Century_Internet.avif" alt="不要选世纪互联" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630231259390.avif" alt="Azure定价" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Choose_the_correct_Azure_official_website.avif" alt="选择正确的Azure官网" style="max-width:100%">

            <p>在创建项目之前还需要申请，如果是Github学生包的话可以直接通过创建的，不是的话就只能以企业的口吻申请。申请提示就是：<strong>案例场景尽可能跟语言模型相关，不要涉及 DALL-E</strong>、<strong>全程用英文填写</strong></p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Request_access_to_openai_service.avif" alt="申请服务" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Fill_out_the_application_form.avif" alt="填写申请表" style="max-width:100%">

            <h3>2. 填写密钥、终结点和部署名</h3>
            <p>在主页 > 认知服务 | Azure OpenAI > 概述 > 开发里面就能找到密钥和终结点。</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Successful_application_email.avif" alt="申请成功邮件" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630235110298.avif" alt="密钥和终结点" style="max-width:100%">

            <p>按照官方的示例，导入com.azure.ai和com.azure.core以及对应的依赖包就能够运行了，本项目在Client$Bot.java里面找到azureOpenaiKey，endpoint，modelId三个字符串字段填上即可。</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630235907699.avif" alt="填写配置" style="max-width:100%">

            <h3>3. 导入项目，运行</h3>
            <p>随便选个趁手的IDE导入，这里用的远古eclipse直接导入项目文件就行，然后填写好上述直接运行Server.java和Client.java即可。</p>

            <h2>引用</h2>
            <ul>
                <li><a href="https://www.cnblogs.com/stulzq/p/17271937.html">晓晨Master：使用 Azure OpenAI 打造自己的 ChatGPT</a></li>
                <li><a href="https://foresightnews.pro/article/detail/26826">阿法兔研究笔记：如何搞到一个 Azure OpenAI 的账号</a></li>
                <li><a href="https://learn.microsoft.com/zh-cn/azure/cognitive-services/openai/chatgpt-quickstart">快速入门：开始通过 Azure OpenAI 服务使用 ChatGPT 和 GPT-4</a></li>
                <li><a href="https://github.com/Richasy/FantasyCopilot">Richasy：Fantasy Copilot</a></li>
            </ul>
        """
    )
}
