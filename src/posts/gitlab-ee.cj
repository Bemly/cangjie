package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGitlabEePost(): Post {
    return Post(
        "gitlab-ee",
        "破解Gitlab EE",
        "2024-08-14",
        "介绍如何使用Ruby生成Gitlab EE许可证，以及使用GitLab-License-Generator工具破解Gitlab EE高级功能。",
        { b =>
            h2(b, "前言")
            p(b, "由于需要镜像等Gitlab高级功能，作者分享了破解Gitlab EE版本的方法。这些破解方法来自官方自己的文档，仅供个人研究使用，企业请付费购买正版授权。该方法已在最新Gitlab EE 18.5上验证可行。")
            h2(b, "使用Ruby生成许可证")
            p(b, "首先安装Ruby（yum install ruby，版本需2.3或以上），然后通过gem install gitlab-license安装许可证库。创建一个license.rb脚本，使用OpenSSL生成RSA 2048位密钥对，然后利用gitlab-license库生成许可证。")
            p(b, "许可证配置包括：设置licensee信息（Name、Company、Email）、开始时间和结束时间（可设到2050年）、管理员和用户通知时间、活跃用户数限制（如10000个）等。运行脚本后生成三个文件：GitLabBV.gitlab-license、license_key和license_key.pub。")
            h2(b, "使用许可证")
            p(b, "用license_key.pub文件替换/opt/gitlab/embedded/service/gitlab-rails/.license_encryption_key.pub，然后将GitLabBV.gitlab-license填入${address}/admin/license地址并重启gitlab-ctl restart。")
            p(b, "如需修改许可证等级为Ultimate，可修改ee/app/models/license.rb文件中plan方法的默认值，将STARTER_PLAN改为ULTIMATE_PLAN。")
            h2(b, "使用GitLab-License-Generator")
            p(b, "也可以使用GitLab-License-Generator工具（https://github.com/Lakr233/GitLab-License-Generator.git），支持Docker运行方式，可通过环境变量配置许可证名称、公司、邮箱、计划等级、用户数和过期年份。该仓库已被DMCA takedown，需选择前几个未被DMCA的提交。")
            h2(b, "安装许可证到Gitlab")
            p(b, "对于14.x之前版本，许可证上传位置在菜单-管理员-订阅-许可证上传。新版本位置在菜单-管理员-设置-通用-添加许可证处。对于Docker Compose安装，可将public.key通过volumes映射到容器内。")
            p(b, "可选步骤：关闭Gitlab Service Ping，编辑/etc/gitlab/gitlab.rb添加gitlab_rails['usage_ping_enabled'] = false，然后重新配置并重启。")
            a(b, attrs("href", "https://blog.17lai.site/posts/29a820b3/"), "阅读原文 - 夜法之书")
        }
    )
}
