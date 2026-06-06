一只蓝莓小果冻 🫐
=============

*[English](README.en.md)*

个人博客，100% 仓颉语言 + Spire 天擎框架开发。

**域名**: [bemly.top](https://bemly.top)

技术栈
-------------

- **语言**: [仓颉](https://cangjie-lang.cn) 1.1.0
- **框架**: [Spire 天擎](https://docs.cangjie-spire.com) — ASP.NET Core 风格 middleware pipeline
- **Web 服务器**: Caddy (Let's Encrypt TLS, www 自签证书)
- **部署**: 阿里云 ECS Arch Linux, 400MB RAM
- **图床**: 飞牛 NAS + nginx 静态文件服务

项目结构
-------------

```
├── cjpm.toml              # 仓颉包配置
├── src/
│   ├── main.cj            # 博客源码
│   ├── main_test.cj       # 测试
│   └── post_*.cj          # 文章（每个文章一个文件）
├── lib/
│   └── html-builder/      # HTML Builder DSL 库
├── nginx/
│   ├── cangjie-imagebed.conf  # 图床 nginx 配置
│   ├── nginx-limit.conf      # 频率限制配置
│   └── README.md              # 部署说明
├── chrome-extension/      # Chrome 扩展（绕过第三方 cookie）
├── Caddyfile              # Caddy Web 服务器配置
├── LICENSE                # MulanPubL-2.0
└── CLAUDE.md              # Claude Code 工作指引
```

HTML Builder DSL
-------------

项目内置 HTML Builder DSL 库，用于声明式生成 HTML：

```cangjie
import html_builder.*

let page = html {
    head {
        title("我的博客")
    }
    body {
        div(HashMap<String, String>().add("class", "container")) {
            h1("标题")
            p("内容")
            a("https://example.com", "链接")
        }
    }
}
```

支持的标签：`html`, `head`, `body`, `div`, `span`, `h1`-`h4`, `p`, `title`, `a`, `img`, `ul`, `li`, `br`, `hr`, `code`, `pre`, `style`, `script`, `meta`, `link`

特殊功能：`raw(html)` 插入原始 HTML，`text(content)` 插入文本（自动转义）

图床
-------------

图床通过飞牛 NAS 的 nginx 静态文件服务实现，URL 格式：

```
https://bemly-moe.5ddd.com/cangjie/{文章名}/{序号}.avif
```

**问题**：Chrome 133+ 的 Third-Party Cookie Phaseout 导致跨站 cookie 无法正常工作。

**解决方案**：
- Firefox：直接支持第三方 cookie，图片正常加载
- Chrome：需要安装扩展绕过限制

详见 [Chrome 扩展](#chrome-扩展) 和 [nginx 配置](nginx/README.md)

Chrome 扩展
-------------

Chrome 133+ 默认限制第三方 cookie，从 `bemly.top` 无法设置 `bemly-moe.5ddd.com` 的 cookie。

**解决方案**：使用 Chrome 扩展通过 `chrome.cookies.set` API 设置 cookie。

**安装方法**：
1. 访问 `https://bemly.top/`
2. 完成 Turnstile 验证
3. Chrome 用户会跳转到安装页面
4. 下载 `chrome-extension.zip` 并解压
5. 打开 Chrome，访问 `chrome://extensions/`
6. 开启「开发者模式」
7. 点击「加载已解压的扩展程序」
8. 选择解压后的文件夹

**扩展原理**：
- `background.js`：使用 `chrome.cookies.set` 设置 `bemly-moe.5ddd.com` 的 `mode=relay` cookie
- `content.js`：检测 Turnstile 验证完成，自动跳转到首页

详见 [Chrome 第三方 Cookie 限制](https://bemly.top/post/third-party-cookie)

构建
-------------

```bash
# 需要配置 CANGJIE_HOME 和 CANGJIE_STDX_PATH 环境变量
source <sdk-path>/envsetup.sh
export CANGJIE_STDX_PATH=<stdx-path>/linux_x86_64_cjnative/static/stdx
cjpm update
cjpm build
```

编译产物: `target/release/bin/main`

运行时需要以下环境变量（不写入代码）：
- `TURNSTILE_SECRET` — Cloudflare Turnstile 密钥
- `TURNSTILE_SITE_KEY` — Cloudflare Turnstile site key

测试
-------------

```bash
cjpm test
```

测试文件命名 `*_test.cj`，放在 `src/` 下，与源码同 package。使用 `@Test` 宏标记测试函数，`@Expect(actual, expected)` 断言。

```
src/
├── main.cj           # 源码
└── main_test.cj      # 测试
```

运行
-------------

```bash
./target/release/bin/main
# 监听 http://127.0.0.1:996
```

部署
-------------

1. 本机修改代码 → push GitHub
2. NAS pull → 编译
3. scp 二进制到 VPS → 重启 systemd 服务

详见 [CLAUDE.md](CLAUDE.md)

许可
-------------

Copyright (c) 2024-2026 Bemly_

[MulanPubL-2.0](https://license.coscl.org.cn/MulanPubL-2.0)（木兰公共许可证 第2版）
