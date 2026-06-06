package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubSponsorsPost(): Post {
    return Post(
        "github-sponsors",
        "我的 GitHub Sponsors 开通啦！",
        "[https://surmon.me/article/163](https://surmon.me/article/163)",
        "详细介绍GitHub Sponsors的申请流程、境外卡选择、Stripe注册等经验分享。",
        { b =>
            h2(b, "我的 GitHub Sponsors 开通啦！")
            p(b, "感觉明天就可以Freelancer了，破碗备好了，裤子上的洞也扯开了，狗都坐下了，就差您的一枚硬币了。自从去年夏天GitHub发布的第一条新闻，我就开始关注GitHub Sponsors了，并于当时申请了加入候选列表，但在过去了半年的0202年，还是没有得到官方的半点消息回复。于是在0202年第一礼拜的一顿猛如虎的操作后，我终于把Sponsors的东西搞完了。")
            h3(b, "GitHub Sponsors 是啥")
            p(b, "对GitHub来说，Sponsors是它的一个产品，这个产品的业务本质是一个弱交易平台，负责处理开发者的资金向开源开发者流入，更大的目的应该是希望激发开源世界的活力吧。对我来说，Sponsors是一个新功能（子平台），我可以比任何其他平台都更为方便、高效、高转化地收取到其他开发者捐赠给我的钱。")
            h3(b, "怎么申请")
            p(b, "来这里：https://github.com/sponsors 点击Join the waitlist，选邮箱、地区，提交。但坑来了：美元是实际意义的国际货币，GitHub是美国公司，仅使用美元结算，所以理论上、事实上美元贸易更为成熟或银行、税务系统更西式的地区都会被优先支持。Sponsors (Stripe)业务目前能支持的国家有三十多个，不支持中国大陆。")
            h3(b, "境外卡")
            p(b, "我们口头指的境外卡往往指境外银行账户，而不是一张所谓的互金公司开的Debit Card。银行账户即传统的正式银行，最常见的账户包含一个Checking Account（支票账户）和一个Savings Account（储蓄账户）。")
            p(b, "如果你只需境内外转账，用TransferWise，实时汇率，附带几个虚拟账户，无汇差，高效，超快，是最好的国际汇款工具。如果只是想跨境收款，用PingPong或连连，随时提现为人民币。如果只是想激活Stripe，用PingPong提供的虚拟账户就可以了。")
            h3(b, "Stripe")
            p(b, "都知道Paypal像支付宝，可以把一笔钱从你的账户转到另一个账户。而Stripe就是和上面描述基本一致的收款工具，且成为2019胡润全球独角兽榜排行第十的公司。Stripe最大的不同在于其极其友好的API，使任何人都可以更低成本地将支付能力接入自己的产品。")
            p(b, "Stripe旗下的Connect产品可以非常方便快速地给你的系统接入全球支付/收款（包括KYC/AML）的能力。KYC（Know your customer）是企业确认客户身份的程序，AML（anti-money laundering）反洗钱是为了预防洗钱活动。")
            a(b, attrs("href", "https://surmon.me/article/163"), "阅读原文")
        }
    )
}
