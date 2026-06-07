package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGmeekPost(): Post {
    return Post(
        "gmeek",
        "可能是目前最方便的个人博客搭建方法——Gmeek 博客框架",
        "2024-08-22",
        "Gmeek 是一个完全基于 GitHub Pages、GitHub Issues 和 GitHub Actions 的超轻量级个人博客框架，从搭建到写作只需 18 秒。",
        { b =>
            p(b, "个人博客是一种在网络上发布的个人日记或出版物，用以分享个人的想法、经验、知识、评论等。相比其他社交工具，没有推送，也没有内容的限制，是个更加强调其私人属性的内容分享方式。")
            p(b, "传统的个人博客搭建需要有服务器、要买域名，门槛比较高。GitHub 推出的 GitHub Pages 可以说是搭建个人博客最方便的方式之一，域名和服务器都能免费使用，并且有很多成熟的项目可以直接调用。")
            h2(b, "功能介绍")
            p(b, "Gmeek 是一个叫 Gmeek 的博客框架，新建文章的方式依然是提交 issue，支持标签、支持评论、支持夜间模式、支持 RSS、支持使用个人域名、可自动更新版本。得益于 GitHub Actions 的存在，配置方式非常简单。完全基于 GitHub Pages、GitHub Issues 和 GitHub Actions，不需要本地部署。")
            h2(b, "安装方式")
            p(b, "新建一个 Gmeek 博客的流程非常简单。只要有 GitHub 账号，两步后就可以直接开始写作。第一步从模板创建仓库（建议仓库名称为 XXX.github.io，其中 XXX 为你的 GitHub 用户名），第二步在仓库的 Settings 中 Pages 的 Build and deployment 的 Source 下面选择 GitHub Actions，这一步做完就算是部署完成了。")
            h2(b, "开始写作")
            p(b, "在 issue 页面点击绿色新建按钮即可开始写作。issue 使用的是 Markdown 语法。issue 编辑器有个很方便的功能：在 Markdown 文件里如果想添加图片，可以直接拖入图片，编辑器会自动上传然后生成链接。编辑完成后一定要记得添加一个标签 Label。")
            h2(b, "现有仓库升级")
            p(b, "如果之前已经有对应的仓库，可以直接在原本仓库进行升级。从模板仓库下载压缩包，将配置文件复制到自己的仓库文件夹内，上传到 GitHub，修改仓库设置为 GitHub Actions，然后重新运行一遍 GitHub Actions，打开网址就能看到之前的文章全都正常显示了。")
            h2(b, "其他功能")
            p(b, "RSS 功能：Gmeek 默认带有 RSS 功能，在主页右上方复制 RSS 链接，在 RSS 阅读器内添加订阅即可。黑暗模式：点击切换按钮就能修改。评论：最下方可以为当前文章添加评论，评论账号使用 GitHub 账号登录。")
            h2(b, "总结")
            p(b, "一个足够简单的发布方式是可以切实提高写作欲望的。博客的写作并没有一个强制性，任何写作路上的小小障碍都有可能让人放弃。Gmeek 很好地解决了这个问题，只要当前设备能连接到 GitHub，文章的编辑和上传就没有什么障碍，是个能避免因为网站原因而放弃发布文章的好博客框架。")
            a(b, attrs("href", "https://sspai.com/post/88950"), "阅读原文")
        }
    )
}
