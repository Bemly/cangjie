package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubPagesPost(): Post {
    return Post(
        "github-pages",
        "多个域名指向同一个 GitHub Pages - 陈惠超的博客",
        "2024-02-02",
        "介绍如何使用 Cloudflare 实现多个域名指向同一个 GitHub Pages 博客，解决换域名后旧链接失效的问题。",
        { b =>
            h2(b, "多个域名指向同一个 GitHub Pages")
            p(b, "作者陈惠超在更换博客域名（从 iamsuperman.cn 到 chenhuichao.com）后，发现了一个问题：如何让散落在各大搜索引擎和社交网站上的旧博客地址以及 GitHub 多个 demo 地址保持正常访问？")
            p(b, "根据 GitHub Pages 的官方文档，一个 username.github.io 只能支持一个域名。虽然官方不提供设置多个域名的方法，但可以通过 Cloudflare 提供的免费 CDN 做转发来曲线救国。")
            p(b, "具体思路是：新建一个 GitHub 账号，创建一个新的 username.github.io 仓库；将旧域名解析到这个新的 GitHub Pages；将旧域名绑定到 Cloudflare 上；在 Cloudflare 中设置 Page Rule，将所有访问旧域名的请求通过 301 重定向转发到新域名。")
            p(b, "但这个方案只能解决首页访问的转发问题。如果用户访问的是具体文章的 URL，由于新仓库上没有对应的 URL，会导致 404 错误。因此作者的解决方案是：将原博客重新部署一份到新仓库，并在新博客上添加提示信息和跳转到新域名的逻辑。")
            p(b, "这样就完美解决了博客启用新域名后，网络上旧域名链接仍然有效的问题。此外，还可以通过 Cloudflare 为 GitHub Pages 全站启用 HTTPS。")
            a(b, attrs("href", "https://blog.chenhuichao.com/2017/06/27/hexo/github-pages-multiple-domain/"), "阅读原文")
        }
    )
}
