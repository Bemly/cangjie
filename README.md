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

项目结构
-------------

```
├── cjpm.toml          # 仓颉包配置
├── src/
│   └── main.cj        # 博客源码
├── Caddyfile          # Caddy Web 服务器配置
├── LICENSE            # MulanPubL-2.0
└── CLAUDE.md          # Claude Code 工作指引
```

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
