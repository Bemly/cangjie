package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAppPost(): Post {
    return Post(
        "app",
        "外贸必收！各国客户最常用的即时聊天APP整理！",
        "2022-02-02",
        "全球已有超过150款即时聊天工具，不同市场的使用习惯各不相同。本文总结各国客户分别习惯用哪种即时聊天APP，方便外贸人开拓市场前做好准备。",
        { b =>
            h2(b, "外贸必收！各国客户最常用的即时聊天APP整理！")
            p(b, "除了邮件之外，外贸人经常还要通过即时聊天APP联络客户、沟通信息。但全球现在已有超过150款即时聊天工具，不同市场的使用习惯各有不同。以下总结一下各国客户分别习惯于用哪种。")
            h3(b, "WhatsApp")
            p(b, "目前WhatsApp的用户数量已经超过了20亿，覆盖了全球180多个国家，并在58个国家属于最常用的即时聊天APP。在渗透率方面，有7个国家的WhatsApp渗透率超过90%。")
            h3(b, "Facebook Messenger")
            p(b, "Facebook Messenger是Facebook自主研发的即时聊天工具，用户数量排名全球第二。它的成长速度非常快，而且打开率较高——一般邮件的打开率在5%，但FB Messenger Blast的打开率在首个小时内可以高达70%-80%。")
            h3(b, "WeChat/WeChat/QQ")
            p(b, "这三款即时聊天工具庞大的基数其实得益于中国网民。WeChat是主要面向国际市场的版本，在海外市场的渗透率还不高，表现最好的是新加坡（渗透率33%）。2020年6月印度封杀了包括WeChat、TikTok在内的多款中国应用。")
            h3(b, "Telegram")
            p(b, "Telegram是俄罗斯人做的软件，创始人同时也是VKontakte的创始人，现在总部在迪拜。2014年Facebook宣布收购WhatsApp后的5天里，Telegram用户增加了800万，因为发达国家用户对隐私比较在意。目前月活超过5亿，主要市场在俄罗斯、伊朗，以及意大利、西班牙等地。Telegram在阿塞拜疆、白俄罗斯、柬埔寨、埃及等9个国家排名第一。")
            h3(b, "Snapchat和Viber")
            p(b, "Snapchat主打阅后即焚理念，月活达到5亿，主要用户群体在美国。Viber之前的主要市场在东欧、俄罗斯和中东，2020年在亚太地区的用户成长达到400%，全球用户数量超过11亿，在乌克兰、白俄罗斯、希腊等国市占率超过90%。")
            h3(b, "Line及其他")
            p(b, "Line是一款亚洲客户常用的即时聊天APP，主要市场是日本、中国台湾、泰国和印度尼西亚。另外韩国市场主要用KakaoTalk，越南市场主要用Zalo，阿尔及利亚市场主要用Phoenix，斯洛文尼亚市场主要用Discord。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1710835874993612412"), "阅读原文")
        }
    )
}
