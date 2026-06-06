package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWordpressGitDeploymentsWithWpPusherPost(): Post {
    return Post(
        "wordpress-git-deployments-with-wp-pusher",
        "WordPress Git deployments with WP Pusher",
        "2024-02-02",
        "WP Pusher 是一款 WordPress 插件，可直接从 GitHub、Bitbucket 或 GitLab 部署主题和插件，告别 FTP 复制粘贴。",
        { b =>
            h2(b, "WordPress Git deployments with WP Pusher")
            p(b, "WP Pusher 是一款 WordPress 插件，让开发者可以直接从 GitHub、Bitbucket 或 GitLab 安装和更新 WordPress 主题和插件，无需再通过 FTP 复制文件。即使是使用廉价共享主机的客户网站也能运行 WP Pusher。")
            p(b, "WP Pusher 解决了 WordPress 开发者面临的一个常见痛点：开发者希望使用版本控制管理代码，但将代码从 GitHub 部署到客户网站的过程很痛苦，因为大多数共享主机没有 Git 和 SSH 支持。开发者最终不得不在 WordPress 内置编辑器中修复 bug 或通过 FTP 复制文件。")
            p(b, "该插件支持 Push-to-Deploy 功能，每次 Git 推送后会自动更新插件和主题。它不需要在服务器上安装 Git，因此可以与最便宜的共享主机兼容。WP Pusher 还针对 WordPress 多站点（multisite）进行了优化。")
            p(b, "定价方面，WP Pusher 提供免费版本（仅支持公共仓库），以及三个付费方案：Freelancer（5 个客户站点，99 美元/年）、Agency（20 个客户站点，199 美元/年）和 Big Agency（100 个客户站点，499 美元/年），均支持私有仓库和邮件支持。所有付费方案提供 30 天 100% 退款保证。")
            p(b, "WP Pusher 还提供丰富的学习资源，包括 Git for WordPress Developers 课程、部署指南和 7 天 Git 视频速成课。用户可以在授权站点之间轻松转移许可证，支持从 WP 管理后台或仪表盘操作。")
            a(b, attrs("href", "https://wppusher.com/"), "访问 WP Pusher")
        }
    )
}
