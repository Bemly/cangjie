package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheChineseBlogosphereAsASiteOfSocialEngPost(): Post {
    return Post(
        "the-chinese-blogosphere-as-a-site-of-social-eng",
        "The Chinese Blogosphere as a Site of Social Engagement and Contestation",
        "2024-02-02",
        "学术论文分析中国博客圈的社会参与和竞争，探讨精英主义、审查制度、商业化和性别重建等议题。",
        { b =>
            h2(b, "The Chinese Blogosphere as a Site of Social Engagement and Contestation")
            p(b, "这篇学术论文发表于 Fast Capitalism 期刊，作者 Jianxin Liu，从社会建构主义和连接主义视角审视中国博客圈自 1999 年诞生以来的发展轨迹。文章采用网络志（netography）方法论，分析虚拟领域与现实世界之间的复杂互动。")
            h2(b, "历史概述")
            p(b, "博客于 1998 年引入中国互联网，最初主要被 IT 社区使用。到 2006 年底，中国大陆博客数量已达 6000 万，成为主流社交媒体空间。到 2008 年，中国博客圈人口已超过美国。中国记者、学者、教育工作者和政府官员纷纷开始使用博客作为沟通平台。")
            h2(b, "精英主义与命名之争")
            p(b, "中国博客圈的一个显著特点是精英主义的渗透。博客一词的中文翻译经历了三个版本的竞争：网记（wangji）、网志（wangzhi）和博客（boke）。前两者是直译，而博客则是新造词，博字暗含博学、博士学位等精英含义，客字则指专业人士。最终博客一词胜出，体现了儒学精英主义的影响。")
            h2(b, "审查与抵抗")
            p(b, "中国互联网审查采取三种基本形式：封锁、内容过滤和官方注册。防火长城（GFW）是最臭名昭著的互联网过滤软件。2005 年，MSN Space 曾向中国政府泄露一名政治异见者的博客身份，导致其被捕。面对审查，网民开发了各种反制工具，如 Freegate 和 Ultrareach 等翻墙软件。")
            p(b, "2009 年的绿坝事件被视为中国网民对抗审查的首次重大胜利。工信部要求所有在中国销售的电脑预装绿坝花季护航过滤软件，但该项目遭到网民、IT 专业人士和外交官的强烈反对，最终被推迟。")
            h2(b, "娱乐化与商业化")
            p(b, "中国博客圈的另一个特点是过度关注娱乐和趋向小报化。大多数博客博主很少表达公开的政治观点，而是选择以生活方式内容为主。新浪博客服务提供商的首页充斥着娱乐明星、八卦和小报新闻，没有政治或时事相关频道。")
            p(b, "商业化也是推动中国博客圈格局变化的重要力量。门户网站化（portalisation）趋势使博客演变为个人门户网站，整合了聊天室、论坛、电子商务等多种服务。名人博客成为粉丝社区和商业推广的中心。")
            h2(b, "性别与女性博主")
            p(b, "中国博客圈与西方博客圈最显著的区别是女性博主在早期阶段的主导影响力。到 2006 年，最知名的博客大多由女性博主撰写，如流氓燕、芙蓉姐姐等。这可能与日记被视为女性化活动有关，也反映了博客为中国女性提供了前所未有的身份表达空间。")
            a(b, attrs("href", "https://fastcapitalism.uta.edu/11_1/liu11_1.html"), "阅读原文")
        }
    )
}
