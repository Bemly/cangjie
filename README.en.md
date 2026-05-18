# Blueberry Jelly 🫐

*[中文](README.md)*

A personal blog built with 100% Cangjie language + Spire framework.

**Domain**: [bemly.top](https://bemly.top)

## Tech Stack

- **Language**: [Cangjie](https://cangjie-lang.cn) 1.1.0
- **Framework**: [Spire](https://docs.cangjie-spire.com) — ASP.NET Core-style middleware pipeline
- **Web Server**: Caddy (Let's Encrypt TLS for main domain, self-signed for www)
- **Hosting**: Alibaba Cloud ECS, Arch Linux, 400MB RAM

## Project Structure

```
├── cjpm.toml          # Cangjie package manifest
├── src/
│   └── main.cj        # Blog source code
├── Caddyfile          # Caddy web server config
├── LICENSE            # MulanPubL-2.0
└── CLAUDE.md          # Claude Code guide
```

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
