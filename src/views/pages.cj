package bemlyCJWeb.views

import html_builder.*

public func renderInstallExtension(): String {
    return html { b =>
        head(b) {
            title(b, "安装扩展 | 一只蓝莓小果冻")
            raw(b, "<style>" + renderCss() + "</style>")
            raw(b, "<meta http-equiv=\"refresh\" content=\"5\">")
        }
        body(b) {
            div(b, attrs("class", "container", "style", "padding:40px 20px")) {
                h1(b, attrs("style", "color:#fff;margin-bottom:24px"), "检测到 Chrome 浏览器")
                p(b, attrs("style", "color:#888;margin-bottom:32px"), "Chrome 限制第三方 Cookie，图床图片无法加载。请选择：")
                div(b, attrs("style", "display:flex;gap:24px;flex-wrap:wrap")) {
                    div(b, attrs("style", "flex:1;min-width:280px;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px")) {
                        h2(b, attrs("style", "color:#00ff88;font-size:1.2rem;margin-bottom:16px"), "安装 Chrome 扩展")
                        raw(b, "<ol style=\"color:#c0c0c8;line-height:2\"><li>下载扩展：<a href=\"/chrome-extension.zip\" style=\"color:#00ff88\">chrome-extension.zip</a></li><li>解压到任意目录</li><li>打开 Chrome，访问 <code style=\"background:rgba(255,255,255,0.1);padding:2px 8px;border-radius:4px\">chrome://extensions/</code></li><li>开启「开发者模式」</li><li>点击「加载已解压的扩展程序」</li><li>选择解压后的文件夹</li></ol>")
                        p(b, attrs("style", "color:#888;font-size:.85rem;margin-top:16px"), "安装后自动跳转到文章页面（Chrome 需要安装插件才能加载图片）")
                    }
                    div(b, attrs("style", "flex:1;min-width:280px;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px")) {
                        h2(b, attrs("style", "color:#e0e0e0;font-size:1.2rem;margin-bottom:16px"), "使用 Firefox 浏览器")
                        p(b, attrs("style", "color:#c0c0c8;line-height:1.7"), "Firefox 不限制第三方 Cookie，可以直接访问图床图片。")
                        a(b, attrs("href", "https://www.mozilla.org/firefox/", "target", "_blank", "style", "display:inline-block;margin-top:16px;padding:12px 24px;background:rgba(255,255,255,0.1);color:#fff;text-decoration:none;border-radius:8px"), "下载 Firefox")
                    }
                }
                p(b, attrs("style", "color:#555;font-size:.8rem;margin-top:32px"), "页面每 5 秒自动刷新，检测插件是否已安装")
            }
        }
    }
}

public func renderSafariUnsupported(): String {
    return html { b =>
        head(b) {
            title(b, "浏览器不支持 | 一只蓝莓小果冻")
            raw(b, "<style>" + renderCss() + "</style>")
        }
        body(b) {
            div(b, attrs("class", "container", "style", "padding:40px 20px")) {
                h1(b, attrs("style", "color:#fff;margin-bottom:24px"), "Safari 不支持图床图片加载")
                p(b, attrs("style", "color:#888;margin-bottom:32px"), "Safari 的 Intelligent Tracking Prevention (ITP) 阻止第三方 Cookie，图床图片无法加载。")
                div(b, attrs("style", "display:flex;gap:24px;flex-wrap:wrap")) {
                    div(b, attrs("style", "flex:1;min-width:280px;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px")) {
                        h2(b, attrs("style", "color:#00ff88;font-size:1.2rem;margin-bottom:16px"), "使用 Chrome + 扩展")
                        p(b, attrs("style", "color:#c0c0c8;line-height:1.7"), "Chrome 可以通过扩展绕过第三方 Cookie 限制。")
                        raw(b, "<ol style=\"color:#c0c0c8;line-height:2;margin-top:16px\"><li>下载并安装 <a href=\"https://www.google.com/chrome/\" target=\"_blank\" style=\"color:#00ff88\">Chrome 浏览器</a></li><li>访问 <a href=\"/install-extension\" style=\"color:#00ff88\">安装扩展页面</a></li><li>安装扩展后即可正常访问</li></ol>")
                    }
                    div(b, attrs("style", "flex:1;min-width:280px;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:12px;padding:28px")) {
                        h2(b, attrs("style", "color:#e0e0e0;font-size:1.2rem;margin-bottom:16px"), "使用 Firefox 浏览器")
                        p(b, attrs("style", "color:#c0c0c8;line-height:1.7"), "Firefox 不限制第三方 Cookie，可以直接访问图床图片。")
                        a(b, attrs("href", "https://www.mozilla.org/firefox/", "target", "_blank", "style", "display:inline-block;margin-top:16px;padding:12px 24px;background:rgba(255,255,255,0.1);color:#fff;text-decoration:none;border-radius:8px"), "下载 Firefox")
                    }
                }
            }
        }
    }
}
