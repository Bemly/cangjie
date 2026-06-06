package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAzureOpenaiPost(): Post {
    return Post(
        "azure-openai",
        "Azure OpenAI 申请流程",
        "2023-06-30",
        "Azure OpenAI 的申请流程和配置方法，国内可直连，新用户有200美元免费额度。",
        { b =>
            p(b, "Azure OpenAI 是微软和 OpenAI 合作推出的企业级 AI 服务，国内可以直连。")
            h2(b, "1. 获得使用资格")
            p(b, "去国际版 Azure 开通 OpenAI 服务，不要选世纪互联。申请时案例场景跟语言模型相关，全程英文填写。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/Dont_choose_Century_Internet.avif", "alt", "不要选世纪互联", "style", "max-width:100%"))
            h2(b, "2. 填写密钥和终结点")
            p(b, "在主页 > 认知服务 | Azure OpenAI > 概述 > 开发里面找到密钥和终结点。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/javaverse-chat/image-20230630235110298.avif", "alt", "密钥和终结点", "style", "max-width:100%"))
        }
    )
}
