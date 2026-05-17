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
- 服务: Caddy (:443, 自动 Let's Encrypt) → Spire 博客 (:5000)
- 博客 systemd 服务名: `blueberry-blog`
- 博客二进制路径: `/opt/blog/blueberry-blog`
- CANGJIE_HOME: `/home/cangjie`
- CANGJIE_STDX_PATH: `/home/cangjie-stdx/linux_x86_64_cjnative/static/stdx`
- Caddy 配置: `/etc/caddy/Caddyfile`
- **连接方式**: 见记忆 `vps-access.md`

### NAS (编译环境)
- 系统: Linux x86_64 (群晖 DSM)
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
├── cangjie/                   # 本仓库 — GitHub bemly/cangjie 的 clone
│   └── spire-blog/            # Spire 博客源码
│       ├── cjpm.toml
│       └── src/main.cj
├── spire-doc/                 # Spire 天擎框架 API 文档 (gitcode)
├── cangjie-docs/              # Cangjie SDK 标准库文档 (gitcode)
└── cangjie-stdx-doc/          # Cangjie STDX 拓展标准库 + 文档 (gitcode)
```

## 部署流程

```bash
# 1. NAS 上编译（用 envsetup.sh 自动配置环境）
cd /vol1/1000/仓颉网站开发/cangjie/spire-blog
source /vol1/1000/仓颉网站开发/sdk/cangjie/envsetup.sh
export CANGJIE_STDX_PATH=/vol1/1000/仓颉网站开发/sdk/cangjie-stdx-linux-x64-1.1.0.1/linux_x86_64_cjnative/static/stdx
cjpm update
cjpm build

# 2. 从 NAS 下载二进制到本机 Mac，再上传 VPS（NAS 无 VPS 密钥）
scp bemly@192.168.1.162:/vol1/1000/仓颉网站开发/cangjie/spire-blog/target/release/bin/main /tmp/blueberry-blog
scp -i "<pem路径>" /tmp/blueberry-blog root@39.98.118.81:/opt/blog/blueberry-blog
rm /tmp/blueberry-blog

# 3. 重启 VPS 服务
ssh -i "<pem路径>" root@39.98.118.81 systemctl restart blueberry-blog
```

## 域名

- `bemly.top` — ICP 备案号 蜀ICP备2024056996号
- Caddy 自动管理 Let's Encrypt 证书，到期自动续期

## 注意事项

- 仓颉版本: 1.1.0
- Spire 框架学习 ASP.NET Core 设计，使用 middleware pipeline
- Spire 默认监听 `127.0.0.1:5000`，Caddy 反代 `:443 → localhost:5000`
- VPS 上永远不执行 cjpm/cjc 命令
- 编译前确保 NAS 上 CANGJIE_HOME 和 CANGJIE_STDX_PATH 环境变量正确
- cjpm 包名只允许驼峰格式（如 `spireBlog`），不能有连字符
- Linux target 需加 `-lcangjie-dynamicLoader-opensslFFI` 链接选项，否则缺 DYN_SHA1 符号
- `RouteValueDictionary.[]` 返回 `String`，`get()` 返回 `?String`（可用 `??`）
