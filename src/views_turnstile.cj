package bemlyCJWeb

import html_builder.*

public func renderTurnstilePage(config: Config): String {
    return html { b =>
        head(b) {
            title(b, "人机验证 | 一只蓝莓小果冻")
            raw(b, "<style>" + renderCss() + "</style>")
            script(b, "")
            raw(b, "<script src=\"https://challenges.cloudflare.com/turnstile/v0/api.js\" async defer></script>")
        }
        body(b) {
            div(b, attrs("class", "turnstile-wrap")) {
                div(b, attrs("class", "turnstile-box")) {
                    div(b, attrs("class", "logo")) { raw(b, "&#x1FAD0;") }
                    p(b, "请完成人机验证以继续访问")
                    raw(b, "<div class=\"cf-turnstile\" data-sitekey=\"" + config.siteKey + "\" data-callback=\"onTurnstileDone\"></div>")
                }
            }
            raw(b, "<script>function onTurnstileDone(token){fetch('/verify-turnstile',{method:'POST',headers:{'Content-Type':'application/x-www-form-urlencoded'},body:'token='+encodeURIComponent(token)}).then(function(r){if(r.ok){var ua=navigator.userAgent;var isSafari=ua.indexOf('Safari')>-1&&ua.indexOf('Chrome')===-1;var isChromium=ua.indexOf('Chrome')>-1;if(isSafari){window.location.href='/safari-unsupported'}else if(isChromium){window.location.href='/install-extension'}else{location.reload()}}else alert('验证失败，请刷新重试')})}</script>")
        }
    }
}
