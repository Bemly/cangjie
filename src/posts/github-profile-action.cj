package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubProfileActionPost(): Post {
    return Post(
        "github-profile-action",
        "玩了一下 Github 个人首页的 Profile （使用 Action 自动更新）",
        "2024-08-14",
        "利用GitHub Profile功能和Action自动更新，在个人主页展示维基百科每日精选图片。",
        { b =>
            h2(b, "GitHub Profile功能")
            p(b, "Github推出的Profile功能，大体上就是用户层面的Readme。如果你新建一个和用户名一样名字的仓库，这个仓库的Readme就会展示在你的个人主页上。虽然仅仅是Markdown形式的Readme，但可玩性很多。")
            p(b, "有人用图片服务展示个人开源贡献信息，有人展示自己的睡眠数据，有人展示年度进度，还有人在主页交换链接并做成漂亮的卡片。")
            h2(b, "维基百科Picture of the Day")
            p(b, "作者laixintao很喜欢维基百科的Picture of the Day，甚至写周报时每周都会贴一张。这些图片都非常精美，由一个小组挑选，普通用户也可以贡献。于是做了一个每天更新Picture of the Day的GitHub Profile。")
            p(b, "基本原理是使用GitHub的Action功能，每天跑一个脚本去维基百科查到今天的Picture地址，然后更新Readme中Picture的URL。所有东西都在仓库里：https://github.com/laixintao/laixintao")
            h2(b, "实现要点与踩坑经验")
            p(b, "让Action的机器人push commit比较tricky，可以直接使用现成的Action（如https://github.com/ad-m/github-push-action），GitHub运行时默认会设置环境变量secrets.GITHUB_TOKEN，连手动设置Token都省去了。")
            p(b, "schedule功能有几个坑：一是一开始写了crontab 15 * * * *，调完发现无论如何改都生效不了。直接方法是将workflow换一个名字push过去，相当于新建workflow重新schedule。不要怀疑crontab写错了，直接换filename即可。")
            p(b, "schedule功能最短运行时间是5分钟一次，写* * * * *没有意义。另外GitHub Action的schedule按照UTC时间运行，需要注意时区差异。")
            p(b, "调试时可以在yaml里增加workflow_dispatch触发器实现手动触发，也可以用issue的comment触发（在yml顶上增加issue_comment）。")
            a(b, attrs("href", "https://www.kawabangga.com/posts/4117"), "阅读原文 - 卡瓦邦噶")
            a(b, attrs("href", "https://github.com/laixintao/laixintao"), "作者的Profile仓库")
        }
    )
}
