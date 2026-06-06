package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCrowdinPost(): Post {
    return Post(
        "crowdin",
        "在你的项目中使用Crowdin处理多国语言翻译-CSDN博客",
        "2024-08-23",
        "Crowdin是一个协作翻译平台，可以对源文件进行逐句翻译，查看翻译推荐，拥有进度管理和审核机制。",
        { b =>
            h2(b, "在你的项目中使用Crowdin处理多国语言翻译")
            p(b, "Crowdin是一个协作翻译平台，很完善，有很多强大功能。你可以对你的源文件进行逐句翻译，查看翻译推荐，还拥有进度管理和审核机制。该平台你可以创建仓库，然后把你本地要翻译的大量源文件上传至仓库，可以多人协作翻译，最后再下载回你本地项目。")
            h3(b, "一、Crowdin平台操作")
            p(b, "先进入Crowdin官网，然后要登录账号，可以用邮箱注册或者用github账号登录。进去后可以选择Free版本，够我们日常使用了。")
            p(b, "创建仓库：你可以点击右上角头像，然后选择Profile，随后我们可以看到自己拥有的项目，点击加号新建项目。填写项目名称、项目访问路径、设置为公开仓库、源码语言、目标语言，然后创建。")
            p(b, "翻译文件：在Home界面点击语言，点进去之后你可以选择某个文件去翻译，右侧可以查看到当前文件的翻译进度。点击文件后，你可以选择某个单词，然后在右侧翻译，也可以使用智能翻译后的文本。")
            h3(b, "二、本地项目操作")
            p(b, "安装脚手架：执行npm i -g @crowdin/cli全局安装。安装完成之后在项目根目录使用crowdin init来初始化配置文件，执行中会要求你通过浏览器认证账号，然后输入你在Crowdin平台上的项目ID。")
            p(b, "上传源码：在crowdin.yml配置文件中，你需要配置files中的source和translation。可以配置多个源码目录与下载目录，%locale%是翻译的语言，%original_file_name%是源文件名。")
            raw(b, "<blockquote>在npm script中加入新的npm脚本命令用于上传资源：\"crowdin:upload\": \"crowdin upload sources\"</blockquote>")
            p(b, "下载翻译文件：你可以先使用命令查看平台文件列表和预计要下载的文件列表。上传成功后你会发现你的Crowdin平台项目的Content中有内容了。")
            a(b, attrs("href", "https://blog.csdn.net/qq_44209274/article/details/122413875"), "阅读原文")
        }
    )
}
