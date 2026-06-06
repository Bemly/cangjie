# Blueberry Jelly 🫐

*[中文](README.md)*

A personal blog built with 100% Cangjie language + Spire framework.

**Domain**: [bemly.top](https://bemly.top)

## Tech Stack

- **Language**: [Cangjie](https://cangjie-lang.cn) 1.1.0
- **Framework**: [Spire](https://docs.cangjie-spire.com) — ASP.NET Core-style middleware pipeline
- **Web Server**: Caddy (Let's Encrypt TLS for main domain, self-signed for www)
- **Hosting**: Alibaba Cloud ECS, Arch Linux, 400MB RAM
- **Image Bed**: FlyBull NAS + nginx static file server

## Project Structure

```
├── cjpm.toml              # Cangjie package manifest
├── src/
│   ├── main.cj            # Blog source code
│   ├── main_test.cj       # Tests
│   ├── post_*.cj          # Blog posts (one file per post)
│   └── post_fnnasBypass.cj
├── nginx/
│   ├── cangjie-imagebed.conf  # Image bed nginx config
│   ├── nginx-limit.conf      # Rate limiting config
│   └── README.md              # Deployment guide
├── chrome-extension/      # Chrome extension (bypass third-party cookie)
├── Caddyfile              # Caddy web server config
├── LICENSE                # MulanPubL-2.0
└── CLAUDE.md              # Claude Code guide
```

## Image Bed

Image bed is implemented via FlyBull NAS nginx static file server:

```
https://bemly-moe.5ddd.com/cangjie/{article-name}/{number}.avif
```

**Problem**: Chrome 133+ Third-Party Cookie Phaseout prevents cross-site cookies.

**Solution**:
- Firefox: supports third-party cookies natively
- Chrome/Edge/Opera: requires extension to bypass

See [Chrome Extension](#chrome-extension) and [nginx config](nginx/README.md)

## Chrome Extension

Chrome 133+ blocks third-party cookies by default. This extension uses `chrome.cookies.set` API to set cookies for `bemly-moe.5ddd.com`.

**Supported browsers**: All Chromium-based browsers (Chrome, Edge, Opera, Brave, etc.)

**Installation**:
1. Visit `https://bemly.top/`
2. Complete Turnstile verification
3. Chromium users will be redirected to install page
4. Download and extract `chrome-extension.zip`
5. Open Chrome, visit `chrome://extensions/`
6. Enable "Developer mode"
7. Click "Load unpacked"
8. Select the extracted folder

**How it works**:
- `background.js`: uses `chrome.cookies.set` to set `mode=relay` cookie for `bemly-moe.5ddd.com`
- `content.js`: detects Turnstile verification, sets `extension_installed` cookie, redirects to home

See [Chrome Third-Party Cookie Limitation](https://bemly.top/post/third-party-cookie)

## Build

```bash
# Requires CANGJIE_HOME and CANGJIE_STDX_PATH environment variables
source <sdk-path>/envsetup.sh
export CANGJIE_STDX_PATH=<stdx-path>/linux_x86_64_cjnative/static/stdx
cjpm update
cjpm build
```

Output: `target/release/bin/main`

Required environment variables at runtime (not committed):
- `TURNSTILE_SECRET` — Cloudflare Turnstile secret key
- `TURNSTILE_SITE_KEY` — Cloudflare Turnstile site key

## Test

```bash
cjpm test
```

Test files are named `*_test.cj` in `src/`, same package as source. Use `@Test` macro for test functions and `@Expect(actual, expected)` for assertions.

```
src/
├── main.cj           # Source
└── main_test.cj      # Tests
```

## Run

```bash
./target/release/bin/main
# Listens on http://127.0.0.1:996
```

## Deploy

1. Edit code locally → push to GitHub
2. NAS pulls → compiles
3. scp binary to VPS → restart systemd service

See [CLAUDE.md](CLAUDE.md) for detailed workflow.

## License

Copyright (c) 2024-2026 Bemly_

[MulanPubL-2.0](https://license.coscl.org.cn/MulanPubL-2.0) (Mulan Public License, Version 2)
