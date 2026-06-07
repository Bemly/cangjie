package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPeopleDieButLongLiveGithubLaike9msBlogPost(): Post {
    return Post(
        "people-die-but-long-live-github-laike9ms-blog",
        "People Die, but Long Live GitHub",
        "2024-08-24",
        "探讨为什么 GitHub 可能是百年尺度上存储信息并让其能被访问的唯一途径，以及它作为数字公墓的未来。",
        { b =>
            p(b, "Joe Armstrong 最近几个月都在忙着迁移博客到 TiddlyWiki。听闻大师在 2019 年 4 月 20 号去世后才反应过来，原来他之前的举动是在未雨绸缪。TiddlyWiki 是个单文件的 Wiki 系统，但重要的是：你把信息存在哪？如果你希望存储一段信息让 100 年后的人也能访问，要怎么做？")
            p(b, "Facebook、Twitter、微博？不要说 100 年，都怀疑 20 年后它们还在不在。Google Cloud、Amazon、阿里云加个人域名？他们大概会存在地更久一些，但没有人能保证不出事故。域名会过期，跑着旧版本操作系统的机器也可能被强制下线或升级。Dropbox、Google Drive、百度网盘同样面临公司存续和服务关闭的风险。")
            p(b, "去中心化存储比如区块链，直觉上怀疑它能否帮助达成目标。对比另一个去中心化的例子 BT，当要下一些老动画或电影时拖不下来是常事，因为死种了，这才几年呢。想来想去，也只有 GitHub 了。")
            p(b, "GitHub 已经成为互联网最重要的基础设施之一，有太多人太多事都直接或间接地依赖于 GitHub。除非人类在未来完全不需要开源代码（这显然不可能），否则想不出 GitHub 有关闭的可能。对 GitHub 来说存在 100 年简直是小意思，500 年也不是不可能。")
            p(b, "除了服务本身的持久性，GitHub 还有两个独特优势：Git 能保存所有历史，Fork 能保证就算黑客黑进一个账户删掉 repo，也不可能把所有 fork 都删干净。综上所述，目前来看 GitHub 是在百年尺度上存储信息并让其能被访问的唯一途径。")
            p(b, "人总想留下某种痕迹证明自己活过，然而事实上 99.999% 的普通人就这么被历史遗忘了——曾经是这样。我们处在信息时代的早期，从今往后被数字化的东西只会越来越多。随着时间推移，越来越多的人会把自己的信息搬到 GitHub 上，依托 GitHub 实现曾经人们可望而不可及的永生。")
            p(b, "人有两次死亡，第一次是肉体，第二次是被人忘记。现在我们已经可以回避第二次。只要 GitHub 支持，就一定会有人这么做。几十几百年后，GitHub 将成为世界上最大的数字公墓，注册用户大部分都已去世，然而个人主页、项目、commit 历史还述说着他们生前做过的事。")
            p(b, "这虽然是个比较 creepy 的推论，但从另一个角度想却证明了人类的巨大进步：对抗死亡是人类文明的永恒主题，而我们已经实现了阶段性胜利。现在是文章、照片、视频，也许还有以个人习惯作为输入训练的模型，再往后会不会有基因信息乃至意识的完整复制呢？")
            p(b, "既然 GitHub 变成数字公墓是一种必然，唯一的希望就是保持某种道德义务。完全可以想象某一天他们出台一个政策把二十年内没有活动迹象的账户全部 archive，GitHub Pages 全部下线。祈祷那一天不会到来。")
            a(b, attrs("href", "https://laike9m.com/blog/people-die-but-long-live-github,122/"), "阅读原文")
        }
    )
}
