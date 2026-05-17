一只蓝莓小果冻 🫐
=============

个人博客，100% 仓颉语言 + Spire 天擎框架开发。

**域名**: [bemly.top](https://bemly.top)

技术栈
-------------

- **语言**: [仓颉](https://cangjie-lang.cn) 1.1.0
- **框架**: [Spire 天擎](https://gitcode.com/soulsoft/spire-doc) — ASP.NET Core 风格 middleware pipeline
- **Web 服务器**: Caddy (自动 Let's Encrypt TLS)
- **部署**: 阿里云 ECS Arch Linux, 400MB RAM

项目结构
-------------

```
├── cjpm.toml          # 仓颉包配置
├── src/
│   └── main.cj        # 博客源码
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

运行
-------------

```bash
./target/release/bin/main
# 默认监听 http://127.0.0.1:996
```

部署
-------------
完整部署流程见 [CLAUDE.md](CLAUDE.md)，简要步骤：

1. 本机修改代码 → push GitHub
2. NAS pull → 编译
3. scp 二进制到 VPS → 重启 systemd 服务

许可
-------------
[MulanPubL-2.0](LICENSE)
