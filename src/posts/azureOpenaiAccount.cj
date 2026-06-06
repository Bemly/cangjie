package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAzureOpenaiAccountPost(): Post {
    return Post(
        "azure-openai-account",
        "如何搞到一个 Azure OpenAI 的账号",
        "2023-02-27",
        "Azure OpenAI 账号申请全流程，从开通 Azure 全球版到成功拿到 OpenAI API 的经验与教训。",
        { b =>
            // ========== 开头 ==========
            raw(b, "<blockquote>\"得先开一个 Azure 全球版账号\"，这是最近三个礼拜我说的最多的一句话。</blockquote>")
            p(b, "如果你点进来是想看如何找个外国手机号申请个 ChatGPT 聊天的可以看到这里就直接关了，本文不是说这个的。")
            p(b, "无论你只是看热闹好奇想要试试，还是已经对 OpenAI 能做的比如对\"改变人机对话的模式\"这句话已经有不少兴奋得睡不着的创想（不管是不是现在的 OpenAI 能帮你实现），你很可能接下来的一个问题是：我如何搞到一个 Azure OpenAI 的账号？")
            p(b, "你当然可以直接到 OpenAI.com 上去申请一个 API 的 key，相关的文档在这里：https://platform.openai.com/docs/introduction/overview，噢，我是推荐你去申请的，因为接下来要说的事情没有半个月办不下来，这半个月时间是很宝贵的，做一些预研比拿到 Azure OpenAI 之后再开始要…对吧。")
            p(b, "不过如果你已经用上了 OpenAI 上的 API 的话，你也发现了（或者即将发现），这个 API 用于自己做做验证啊实验不错，但是商用起来不怎么…总而言之言而总之就是不怎么保险。")
            p(b, "所以让我们把目光投向 OpenAI 商用正路：微软的 Azure。")

            // ========== 正文 ==========
            p(b, "微软今年正式开放了 Azure OpenAI 服务，但是，由于人民群众日益直线增长的需求和提供 OpenAI 服务所需要的 GPU 数量之间的矛盾，微软目前只在他家 70 多个可用区域中的三个提供了 Azure OpenAI，所以 Azure OpenAI 的 API 开通目前还需要申请。我们来看看怎么申请能更顺畅一些。")
            p(b, "这个事情说起来一共就两个步骤：")
            raw(b, "<ol><li>你要有一个 Azure 全球版的账号</li><li>在 Azure 的门户里申请 OpenAI 的 API</li></ol>")
            p(b, "不过这两个步骤还是有些小窍门的，我来根据之前小伙伴们申请的经验（和教训）总结一下：")
            raw(b, "<ol><li>Azure 全球版账号是必须的，所以用公司名义开一个（除非你是微软最有价值专家 MVP）。如果你觉得 Azure 很可能用量一年能超过 8 万 RMB 的话，找相应的微软销售或者微软合作伙伴帮你安排企业级协议。EA 或者 MCCL 这样的企业级协议会有效地提高申请成功率。</li><li>全程用英文填写</li><li>如果你的公司有海外实体，就用海外实体的名字</li><li>如果你知道你所在的公司是微软 ManagedPartner 或者 Managed Customer 的话，就用在微软系统里的那个名字，虽然不是绝对，但是很多 denied 原因写着\"unmanaged\"。</li><li>注意表格中红色字的提示。</li><li>案例场景尽可能跟语言模型相关，不要涉及 DALL-E</li></ol>")
            p(b, "填完之后就等呗，要不就是被 Denied 了之后摸脑门。其实被 Denied 了也不要介意，真的不要介意，大不了换个样子再申请一次嘛，我给你看看跟你一样被 Denied 的还有这位呢：")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/denied-example.avif", "alt", "Denied 示例", "style", "max-width:100%"))

            // ========== 附录 ==========
            h2(b, "附录：填写这个 Form 里都要填些啥")
            p(b, "第一部分我就不赘述了，就是注意你的 subscription ID 要填你家 Azure 门户里\"订阅\"下面那一串，不要填错了。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/form-part1.avif", "alt", "表单第一部分", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/form-subscription-id.avif", "alt", "填写 Subscription ID", "style", "max-width:100%"))
            p(b, "下面这个问题之前说了，如果有海外实体最好填海外的")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/form-overseas-entity.avif", "alt", "海外实体选项", "style", "max-width:100%"))
            p(b, "下面这题是道概率题，哪个都有可能对。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/form-probability.avif", "alt", "概率题选项", "style", "max-width:100%"))
            p(b, "接下来这题要注意啊，一定要找一个微软的同事做你的 Sponsor，虽然看起来是 Optional 的。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/form-sponsor.avif", "alt", "Sponsor 字段", "style", "max-width:100%"))
            p(b, "下面一个问题要敲黑板了，往碎了敲的那么大声：除非你真的一定非要用画图的能力（你不要，你没有，你用不上），不然请不要勾选 DALL-E：")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/form-dalle.avif", "alt", "不要勾选 DALL-E", "style", "max-width:100%"))
            p(b, "提交了以后你会收到一封来自 Cognitive Services GatingSupport 的邮件，也证实了为什么刚刚不要选 DALL-E。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/email-response.avif", "alt", "Cognitive Services 邮件回复", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/dalle-warning.avif", "alt", "DALL-E 相关提示", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/email-confirmation.avif", "alt", "申请确认邮件", "style", "max-width:100%"))
            p(b, "然后你就要进入一个 0 天 -18 天不等的等待期了，通常 10 天左右能回复你，那么祝你好运。如果一次运气不好，记得上一次的答案肯定有哪些填错了，再来一次吧。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azureOpenaiAccount/disclaimer.avif", "alt", "免责声明", "style", "max-width:100%"))

            // ========== 出处 ==========
            h2(b, "出处")
            raw(b, "<p>本文转载自：<a href=\"https://foresightnews.pro/article/detail/26826\">阿法兔研究笔记 — 如何搞到一个 Azure OpenAI 的账号</a></p>")
        }
    )
}
