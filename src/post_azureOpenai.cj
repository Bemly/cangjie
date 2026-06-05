package bemlyCJWeb

func getAzureOpenaiPost(): Post {
    return Post(
        "azure-openai",
        "Azure OpenAI 申请流程",
        "2023-06-30",
        "Azure OpenAI 的申请流程和配置方法，国内可直连，新用户有200美元免费额度。",
        """
            <p>Azure OpenAI 是微软和 OpenAI 合作推出的企业级 AI 服务，国内可以直连，新用户第一个月有200美元的免费额度，还是挺香的。</p>

            <h2>1. 获得Azure OpenAI的使用资格</h2>
            <p>首先去国际版Azure开通OpenAI服务，注意不要选<a href="https://www.azure.cn/">世纪互联</a>，这货现在还不支持azure openai服务，好消息是国际版的OpenAI是面向全球的包括中国，同时得益于微软Azure的功劳，这个API的使用国内是可以直连的，虽说需要付费但是免费第一个月的200美元配额还是挺香的，详细定价：<a href="https://azure.microsoft.com/zh-cn/pricing/details/cognitive-services/openai-service/">Azure OpenAI 定价</a></p>
            <p>一般来说复制一段1000行的代码给GPT观摩差不多就4000标记（azure限制一次上下文每分钟只能4000标记）</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Dont_choose_Century_Internet.avif" alt="不要选世纪互联" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630231259390.avif" alt="Azure定价" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Choose_the_correct_Azure_official_website.avif" alt="选择正确的Azure官网" style="max-width:100%">

            <h2>2. 申请流程</h2>
            <p>在创建项目之前还需要申请，如果是Github学生包的话可以直接通过创建的（可以自己创建，如果没有邮箱的话也可以去某些交易平台获取，但是不建议），不是的话就只能以企业的口吻申请，具体神仙过海各显神通咯。</p>
            <p>申请提示就是：<strong>案例场景尽可能跟语言模型相关，不要涉及 DALL-E</strong>、<strong>全程用英文填写</strong></p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Request_access_to_openai_service.avif" alt="需要进行服务申请" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Fill_out_the_application_form.avif" alt="申请表单填写" style="max-width:100%">

            <p>一般没有企业邮箱可以用wecom.work的企业微信邮箱去申请，通过的概率更大些，一般同意的时间也很快，差不多一天不到就能出结果，要是被Denied也不用慌，反正可以一直申请着走，换个法子说不定就能通过了，然后跟着其他教程一路创建好模型就行</p>

            <h2>3. 填写密钥、终结点和部署名</h2>
            <p>在主页 > 认知服务 | Azure OpenAI > 概述 > 开发里面就能找到密钥和终结点</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Successful_application_email.avif" alt="申请成功邮件" style="max-width:100%">
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630235110298.avif" alt="密钥和终结点" style="max-width:100%">

            <p>按照官方的示例：<a href="https://learn.microsoft.com/zh-cn/azure/cognitive-services/openai/quickstart?pivots=programming-language-java&tabs=command-line#create-a-sample-application">Java 快速入门</a>，导入com.azure.ai和com.azure.core以及对应的依赖包就能够运行了。</p>
            <p>本项目在Client$Bot.java里面找到azureOpenaiKey，endpoint，modelId三个字符串字段填上即可，这仨分别填密钥1/2其中一个，终结点和部署名，比如我这里部署名就是bemlyNya</p>
            <img src="https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630235907699.avif" alt="填写配置" style="max-width:100%">

            <h2>4. 注意事项</h2>
            <ul>
                <li><strong>SYSTEM/USER/ASSISTANT</strong>：分别对应聊天规则的严格或者宽松，超过规则就会触发OpenAI的政策安全警告，返回400的报错码</li>
                <li><strong>Token限制</strong>：azure限制一次上下文每分钟只能4000标记</li>
                <li><strong>免费额度</strong>：新用户第一个月有200美元的免费额度</li>
            </ul>

            <h2>引用</h2>
            <ul>
                <li><a href="https://www.cnblogs.com/stulzq/p/17271937.html">晓晨Master：使用 Azure OpenAI 打造自己的 ChatGPT</a></li>
                <li><a href="https://foresightnews.pro/article/detail/26826">阿法兔研究笔记：如何搞到一个 Azure OpenAI 的账号</a></li>
                <li><a href="https://learn.microsoft.com/zh-cn/azure/cognitive-services/openai/chatgpt-quickstart">快速入门：开始通过 Azure OpenAI 服务使用 ChatGPT 和 GPT-4</a></li>
            </ul>
        """
    )
}
