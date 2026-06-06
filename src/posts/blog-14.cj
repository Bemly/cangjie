package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog14Post(): Post {
    return Post(
        "blog-14",
        "弃用 Chrome 改用 Firefox 的几点理由",
        "2021-08-17",
        "关于 Chrome 69 隐私丑闻的随想，从隐私保护、防范入侵、Tor 社区加持等方面分析 Firefox 相比 Chrome 的优势。",
        { b =>
            h2(b, "引子")
            p(b, "2018 年 9 月发布的 Chrome 69 版本出了一个严重的隐私丑闻——当你使用"清空所有 cookie"功能时，其它网站的 cookie 确实被清空了，但 Google 域名下的 cookie 被悄悄地保留了下来。这绝对不是 bug，而是一个有意实现的功能。")
            h2(b, "名词解释")
            p(b, "Chrome 与 Chromium 都由 Google 主导开发。Chromium 是开源项目，Chrome 在其基础上增加了闭源模块。Firefox Quantum 是 Firefox 57 版本，内部采用基于 Rust 开发的 Servo 引擎。Tor 是老牌安全工具，专门设计用于隐匿上网身份。")
            h2(b, "Firefox 在隐私保护方面的优势")
            p(b, "开发 Firefox 的 Mozilla 是非营利组织，而 Google 90% 以上的利润来自广告收入。Google 必须尽可能收集网民隐私来实现广告精准投放。Chrome 的闭源模块干了什么，大家并不太清楚；而 Firefox 完全开源，偷干坏事会被代码审计曝光。")
            p(b, "Chrome 缺乏网站中立性——浏览器对所有网站应该一视同仁，但由于 Chrome 本身是 Google 开发的，很难做到中立。")
            h2(b, "Firefox 在防范入侵方面的优势")
            p(b, "Chrome 占据浏览器市场份额第一，更高的市场份额意味着对攻击者具有更高诱惑力。Chrome 的 Blink 引擎漏洞在地下黑市能卖更值钱。")
            p(b, "Firefox Quantum 引入了用 Rust 开发的 Servo 引擎。Rust 避免了 C/C++ 在内存和多线程方面的弊端，大大降低某些类型的安全漏洞。")
            p(b, "Firefox 使用自带的 CA 证书，不受操作系统及厂商影响；Chrome 使用系统 CA 证书。")
            h2(b, "Tor 社区对 Firefox 的加持")
            p(b, "Tor Browser 是在 Firefox ESR 基础上定制。Tor 社区将第一方隔离和防范指纹追踪等功能回馈给了 Firefox。2018 年 Mozilla 启动 Fusion 项目，进一步整合 Tor 的安全防御技术。")
            h2(b, "性能")
            p(b, "Firefox Quantum 之后性能大幅提升，与 Chrome 已相差不大。《纽约时报》2018 年还专门发文章谈到 Firefox 的强势回归。")
            h2(b, "总结")
            p(b, "当性能相差不大，而 Firefox 在保护隐私和安全防御方面有更多优势时，Chrome 用户应该考虑切换。注意不要使用中国版 Firefox，要从 Mozilla 官网下载国际版。")
            a(b, attrs("href", "https://program-think.blogspot.com/2018/09/Why-You-Should-Switch-from-Chrome-to-Firefox.html"), "阅读原文")
        }
    )
}
