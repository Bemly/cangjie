package bemlyCJWeb

import html_builder.*

func getAzureOpenaiPost(): Post {
    return Post(
        "azure-openai",
        "Azure OpenAI 申请流程",
        "2023-06-30",
        "Azure OpenAI 的申请流程和配置方法，国内可直连，新用户有200美元免费额度。",
        { b =>
            p(b, "Azure OpenAI 是微软和 OpenAI 合作推出的企业级 AI 服务，国内可以直连，新用户第一个月有200美元的免费额度。")
            h2(b, "1. 获得Azure OpenAI的使用资格")
            raw(b, "<p>首先去国际版Azure开通OpenAI服务，注意不要选<a href=\"https://www.azure.cn/\">世纪互联</a>，这货现在还不支持azure openai服务。</p>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Dont_choose_Century_Internet.avif", "alt", "不要选世纪互联", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630231259390.avif", "alt", "Azure定价", "style", "max-width:100%"))
            h2(b, "2. 申请流程")
            p(b, "申请提示：案例场景尽可能跟语言模型相关，不要涉及 DALL-E，全程用英文填写。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Request_access_to_openai_service.avif", "alt", "申请服务", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Fill_out_the_application_form.avif", "alt", "填写申请表", "style", "max-width:100%"))
            h2(b, "3. 填写密钥、终结点和部署名")
            p(b, "在主页 > 认知服务 | Azure OpenAI > 概述 > 开发里面就能找到密钥和终结点。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Successful_application_email.avif", "alt", "申请成功邮件", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630235110298.avif", "alt", "密钥和终结点", "style", "max-width:100%"))
            h2(b, "引用")
            raw(b, "<ul><li><a href=\"https://www.cnblogs.com/stulzq/p/17271937.html\">晓晨Master：使用 Azure OpenAI 打造自己的 ChatGPT</a></li><li><a href=\"https://foresightnews.pro/article/detail/26826\">阿法兔研究笔记：如何搞到一个 Azure OpenAI 的账号</a></li></ul>")
        }
    )
}
