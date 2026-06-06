package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDejavusBlogCgitGitPost(): Post {
    return Post(
        "dejavus-blog-cgit-git",
        "使用 cgit 托管小小的也很可爱的 Git 服务器",
        "2023-05-11",
        "在 Debian 上使用 cgit 搭建轻量级 Git 仓库前端，包括安装配置、代码高亮和 Nginx 反代设置。",
        { b =>
            p(b, "cgit 是一个用 C 编写的用于 Git 存储库的超高速前端用户界面，特点：简单、强大。谁在使用？比如 https://git.kernel.org/。")
            h2(b, "准备环境")
            p(b, "前置条件：在 Debian 11 上已安装 nginx、git、vim 等软件包。安装 apache2-utils 用于 HTTP 基本认证管理，fcgiwrap 用于将 CGI 脚本转发到 FastCGI 进程和 Web 服务器通信。")
            p(b, "添加 git 用户并创建裸存储库。设置默认分支名称，git init --bare 初始化仓库。用于 cgit 展示当前存储库描述信息。设置权限和用户组 chown -R git:www-data。")
            p(b, "作者写了一个 Shell 脚本用于交互式快速创建新的裸存储库，以后初始化新的裸存储库仅需 sudo git-bare 即可完成。")
            h2(b, "安装 cgit")
            p(b, "考虑到 cgit 最近的正式发行版是 3 年前了，从源码开始构建以获取最新的错误修复和补丁。git clone cgit 源码，git submodule init 和 update，编辑 cgit.conf 配置构建参数，然后 make 编译安装。")
            h2(b, "配置 cgit")
            p(b, "安装 python3-docutils、python3-markdown、highlight、python3-pygments 用于代码高亮和 Markdown 渲染。编译安装 LuaoSSL 用于 Lua 脚本支持。")
            p(b, "编辑 /etc/cgitrc 配置文件，设置 CSS、logo、favicon、虚拟根路径，禁用哑克隆，启用 Smart HTTP，配置 root-title 和 root-desc，启用索引所有者、索引链接、blame 等功能。")
            h2(b, "代码高亮与 Gravatar")
            p(b, "配置代码高亮风格和 Gravatar 头像优化，使用 filter API 的 Lua 脚本实现个性化功能。最后配置 Nginx 反代，将 cgit 通过 Web 服务器对外提供访问。")
            a(b, attrs("href", "https://blog.dejavu.moe/posts/hosting-minimal-git-server-with-cgit/"), "阅读原文")
        }
    )
}
