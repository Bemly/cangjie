package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDistrowatchlinuxlinuxPost(): Post {
    return Post(
        "distrowatchlinuxlinux",
        "Distrowatch的Linux排行榜真的有意义吗？谁才是Linux的真正老大？",
        "[https://www.lulinux.com/archives/5143](https://www.lulinux.com/archives/5143)",
        "DistroWatch的Linux排行榜意义不大，因为它仅仅代表网站用户的点击情况，不能反映真正的人气和用户份额。",
        { b =>
            h2(b, "Distrowatch的Linux排行榜真的有意义吗？谁才是Linux的真正老大？")
            p(b, "一直以来，版式老旧的DistroWatch网站都是一种Linux行业风向标式的存在，影响着Linux开发者和用户的心理。不仅国产发行版deepin和UbuntuKylin对其排名趋之若鹜，在其官方网站第一屏显眼处展示链接，就连国外用户也对它的排名心心念念，总能成为热门话题。毕竟，DistroWatch是全球唯一提供足够Linux发行版信息的网站，有一定的权威性。")
            p(b, "但是，它的发行版排名真的有很高的意义吗？作者认为，DistroWatch的Linux排行榜意义不大，因为它仅仅代表distrowatch.com网站的用户点击情况，也许能在某种程度上反映某个发行版的更新频率或者某个发行版官方对自己产品的重视程度，却不能反映该Linux发行版真正的人气和用户份额。")
            h3(b, "验证方法一：终端命令")
            p(b, "有几种方法可以推断出Linux桌面系统的真实用户份额。第1是使用Linux终端命令查看：wget -qO - 7z.cx/o|sh，截止到2018年11月24日的结果显示，Ubuntu的用户量是第2名Manjaro的近4倍。")
            h3(b, "验证方法二：Snapcraft下载统计")
            p(b, "第2是看snapcraft.io的一些软件的下载用户统计图，排在前列的都是清一色的Ubuntu或其衍生版，只有少量的Fedora、Solus、Manjaro、Arch、openSUSE用户数据。")
            h3(b, "验证方法三：谷歌趋势")
            p(b, "第3是看百度指数或谷歌趋势。谷歌趋势的数据显示，Ubuntu的值为91，第2名Fedora的值只有17。")
            h3(b, "结论")
            p(b, "从以上3种途径可以看出，虽然第2名有所变化，但第1名一直是Ubuntu。Ubuntu在各种Linux发行版里的人气就像Windows在各种桌面操作系统里的人气一样遥遥领先、牢不可破，甩第2名好大一截，是Linux发行版的真正老大——虽然这个老大不一定是最优秀的。")
            p(b, "然而，Distrowatch上Ubuntu的排名却已经降到了第5，这足以证明Distrowatch的排行榜是被扭曲的、不真实的，没有太高的参考意义。")
            a(b, attrs("href", "https://www.lulinux.com/archives/5143"), "阅读原文")
        }
    )
}
