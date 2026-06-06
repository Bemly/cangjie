package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCdnjsdelivrCdngithubpagecnPost(): Post {
    return Post(
        "cdnjsdelivr-cdngithubpagecn",
        "使用星空CDN和JSDelivr CDN对GithubPage未备案.cn域名进行全站加速",
        "2023-04-12",
        "介绍如何使用星空CDN和JSDelivr CDN为GitHub Pages未备案.cn域名进行全站加速。",
        { b =>
            h2(b, "写在前面")
            p(b, "本篇博客是对 GitHub Page 进行域名解析后在国内渣访问速度的一种贫穷的补救尝试。若您有条件的话，建议购买已经备案的域名，这样可以享受到国内 CDN 的免费服务；或者购买国内的域名+服务器并备案。若您的服务器在海外且是公有的，又购买了 .cn 这种在国内必须备案的顶级域名，那么你可能需要寻找国外的 CDN，或者国内的免备案 CDN。")
            p(b, "在尝试了多种方案后，找到了一个前期免费、后期便宜、无需备案、速度还凑合、回源 IP 可以直接设置为 github.io 域名的国内小型 CDN 供应商——星空 CDN。同时使用 JSDelivr 这个专门针对 GitHub 优化的免费 CDN，通过修改每一个静态资源的加载地址，进一步提高了速度。")
            h2(b, "星空CDN使用方法")
            p(b, "官网为 xkcdn.cn，注册后会赠送 1 元，可以在套餐管理选择 1 个月的免费体验包，这个包是可以续费的，1 块钱一个月，流量 10G。买完后进入产品管理-域名管理，添加域名和加上 www 的域名。注意源站 IP 是非常重要的，对于 GitHub Page 甚至可以写成博客的原始域名。")
            p(b, "保存后进入产品管理-解析管理，复制 CNAME 区域，然后到达域名供应商（如腾讯云），进入域名解析，删掉现有解析，添加两条 CNAME 解析。等待解析生效即可，一般都是秒生效。")
            h2(b, "JSDelivr CDN使用方法")
            p(b, "官网是 jsdelivr.com，但实际上不需要登录这个网站，只需要在每个 HTML 的代码中修改资源的加载路径。规则如下：https://cdn.jsdelivr.net/gh/你的用户名/你的仓库名@发布的版本号/文件路径。可以在 site 下新建一个 cdnurl，然后某个资源的加载可以写成 {{ site.cdnurl }}/assets/js/jquery-ui.js。")
            h2(b, "可能出现的问题")
            p(b, "GitHub Page 报 502 错误：解决方案一是使用快捷键 CTRL+F5 从服务器刷新缓存，方案二是检查 CDN 配置和解析配置。第一次加载速度非常慢：经排查是因为源站 SSL 选项选的是 http，改成 http+https（协议跟随模式）即可解决。")
            a(b, attrs("href", "https://www.freesion.com/article/9129328111/"), "阅读原文")
        }
    )
}
