# Cangjie 图床 nginx 配置

## 文件说明

- `cangjie-imagebed.conf` - 图床 location 配置
- `nginx-limit.conf` - 频率限制配置（需要放在 nginx.conf 的 http {} 块内）

## 部署步骤

### 1. 创建图片目录

```bash
mkdir -p /path/to/cangjie-images/{arch-linux-400mb,kernel-71-rc3-bbr,cloud-server-journey}
```

### 2. 添加频率限制配置

将 `nginx-limit.conf` 的内容添加到 nginx.conf 的 `http {}` 块内。

### 3. 添加图床配置

将 `cangjie-imagebed.conf` 复制到 nginx 的 conf.d 目录，并修改 `alias` 路径。

### 4. 重载 nginx

```bash
nginx -s reload
```

## 访问方式

```
https://your-domain/cangjie/{文章名}/{序号}.{ext}
```

例如：
- `https://your-domain/cangjie/arch-linux-400mb/1.avif`
- `https://your-domain/cangjie/kernel-71-rc3-bbr/2.png`

## 频率限制

- 单 IP 10r/s，burst 20
- 超过返回 429
