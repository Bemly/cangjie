# CLAUDE.md

本文件为 Claude Code 在此仓库（仓颉 Spire 博客）工作时提供指引。

## 项目概述

仓颉 Spire 博客，100% 仓颉语言 + Spire 天擎框架开发。
域名 `bemly.top`，运行于阿里云 ECS VPS。

## 记忆系统

项目的持久化记忆保存在：
`/Users/bemly/.claude/projects/-Users-bemly-cchaha-cangjie/memory/`

- `MEMORY.md` — 记忆索引
- `vps-access.md` — VPS IP、密钥、登录方式
- `nas-access.md` — NAS IP、密码、路径
- `spire-blog-workflow.md` — 编译→部署完整流程
- `docs.md` — Spire + Cangjie SDK + STDX API 文档路径

**敏感信息（IP、密码、密钥路径）只在记忆文件中，不写入项目文件或 git 历史。**

## 核心规则

1. **VPS 是生产环境，绝对不要在上面编译**。只上传已编译好的二进制文件运行
2. **所有编译在 NAS 上进行**
3. **项目源码通过 GitHub 同步**：本机 push → GitHub → NAS pull
4. **每次修改必须 git commit + push**，不推等于没改
5. **禁止往 /tmp 塞文件**，所有文件统一放 NAS `/vol1/1000/仓颉网站开发/`

## 环境信息

### VPS (生产环境)
- 系统: Arch Linux, 400MB RAM, 20GB 磁盘
- 服务:
  - Caddy :443 → Spire :996（bemly.top，Let's Encrypt 证书）
  - Caddy :80 → :443 重定向
  - www.bemly.top 自签证书 → 301 跳转 bemly.top
  - IP 直连被阻断（Caddy abort）
  - HSTS 已关闭
- 博客 systemd 服务名: `bemlyCJWeb`
- 博客二进制路径: `/home/bemlyCJWeb/bemlyCJWeb`
- 工作目录: `/home/bemlyCJWeb/`
- CANGJIE_HOME: `/home/cangjie`
- CANGJIE_STDX_PATH: `/home/cangjie-stdx/linux_x86_64_cjnative/static/stdx`
- Caddy 配置: `/etc/caddy/Caddyfile`
- **连接方式**: 见记忆 `vps-access.md`

### NAS (编译环境)
- 系统: Linux x86_64 (飞牛 FnOS)
- 项目路径: `/vol1/1000/仓颉网站开发/`
- Cangjie SDK: `/vol1/1000/仓颉网站开发/sdk/cangjie/`
- Cangjie STDX: `/vol1/1000/仓颉网站开发/sdk/cangjie-stdx-linux-x64-1.1.0.1/`
- **连接方式**: 见记忆 `nas-access.md`

## 项目结构

```
/vol1/1000/仓颉网站开发/
├── sdk/                       # Cangjie SDK 归档
│   ├── cangjie/               # 解压的 SDK (envsetup.sh 在此)
│   └── cangjie-stdx-*/        # STDX 扩展库
├── cangjie/                   # 本仓库 — GitHub bemly/cangjie 的 clone，即 cjpm 项目根
│   ├── cjpm.toml
│   ├── LICENSE
│   └── src/main.cj
├── spire-doc/                 # Spire 天擎框架 API 文档 (gitcode)
├── cangjie-docs/              # Cangjie SDK 标准库文档 (gitcode)
└── cangjie-stdx-doc/          # Cangjie STDX 拓展标准库 + 文档 (gitcode)
```

## 运行时依赖

VPS 上运行博客需要以下文件：

| 文件 | 位置 | 说明 |
|------|------|------|
| `bemlyCJWeb` | `/home/bemlyCJWeb/` | 编译产物，博客主程序 |
| `libcangjie-runtime.so` | `/home/cangjie/runtime/lib/linux_x86_64_cjnative/` | 仓颉运行时 |
| `libboundscheck.so` | `/home/cangjie/lib/linux_x86_64_cjnative/` | 边界检查库 |
| `libm.so.6` | 系统 `/usr/lib/` | 数学库（系统自带） |
| `libc.so.6` | 系统 `/usr/lib/` | C 标准库（系统自带） |
| `ld-linux-x86-64.so.2` | 系统 `/usr/lib64/` | 动态链接器（系统自带） |

以下在编译时静态链接进二进制，**运行时不需要**：
- STDX 静态库 (`libstdx.*.a`, `libcangjie-dynamicLoader-opensslFFI.a` 等)
- Soulsoft Spire 模块 (`soulsoft_web_*`)

## 部署流程

```bash
# 1. NAS 上编译（用 envsetup.sh 自动配置环境）
cd /vol1/1000/仓颉网站开发/cangjie
git pull
source /vol1/1000/仓颉网站开发/sdk/cangjie/envsetup.sh
export CANGJIE_STDX_PATH=/vol1/1000/仓颉网站开发/sdk/cangjie-stdx-linux-x64-1.1.0.1/linux_x86_64_cjnative/static/stdx
cjpm update
cjpm build

# 2. 从 NAS 下载二进制到本机 Mac，再上传 VPS（NAS 无 VPS 密钥）
scp bemly@192.168.1.162:/vol1/1000/仓颉网站开发/cangjie/target/release/bin/main /tmp/bemlyCJWeb
scp -i "<pem路径>" /tmp/bemlyCJWeb root@39.98.118.81:/home/bemlyCJWeb/bemlyCJWeb
rm /tmp/bemlyCJWeb

# 3. 重启 VPS 服务
ssh -i "<pem路径>" root@39.98.118.81 systemctl restart bemlyCJWeb
```

## 域名

- `bemly.top` — ICP 备案号 蜀ICP备2024056996号，Let's Encrypt 自动续期
- `www.bemly.top` — 自签证书，301 跳转到 `bemly.top`
- HSTS 已关闭
- IP 直连被阻断，仅域名可访问
- DNS HTTPS 记录（阿里云控制台）：
  ```
  记录类型: HTTPS
  主机记录: @
  记录值:   1 . alpn="h3,h2" port="443"
  ```
  浏览器解析到该记录后首次连接即优先走 HTTP/3（QUIC），降级才走 h2
- VPS 安全组需放行 UDP 443，firewalld 需 `firewall-cmd --add-port=443/udp`

## 注意事项

- 仓颉版本: 1.1.0
- 项目包名: `bemlyCJWeb`（驼峰格式，cjpm 不允许连字符）
- Spire 框架学习 ASP.NET Core 设计，使用 middleware pipeline
- Spire 监听 `127.0.0.1:996`，Caddy 反代 `:443 → :996`，`:80 → :443` 重定向
- VPS 上永远不执行 cjpm/cjc 命令
- 编译前确保 NAS 上 CANGJIE_HOME 和 CANGJIE_STDX_PATH 环境变量正确
- Linux target 需加 `-lcangjie-dynamicLoader-opensslFFI` 链接选项，否则缺 DYN_SHA1 符号
- `RouteValueDictionary.[]` 返回 `String`，`get()` 返回 `?String`（可用 `??`）
