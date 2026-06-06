package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxAmdGpuFirefoxPost(): Post {
    return Post(
        "linux-amd-gpu-firefox",
        "如何在 Linux 系统上对 AMD GPU 启用 Firefox 视频硬件解码 - 影子屋",
        "2024-08-10",
        "记录在AMD GPU上开启Firefox视频硬件解码的过程，包括安装驱动、配置about:config和验证方法。",
        { b =>
            h2(b, "如何在 Linux 系统上对 AMD GPU 启用 Firefox 视频硬件解码")
            p(b, "对于 Intel GPU，Firefox 115 以及之后版本会自动在符合条件时开启硬件加速。但对于 AMD GPU，Firefox 并不会自动开启硬件加速，因此用户需要手动配置。")
            h3(b, "第零步：安装相应的驱动及软件包")
            p(b, "确保已安装 Mesa VA-API 驱动，使用 vainfo 命令确认 VA-API 可用。看到输出中包含 VAProfileMPEG2Simple、VAProfileH264High、VAProfileHEVCMain 等支持的编码格式即可进行下一步。")
            h3(b, "第一步：修改 about:config 配置")
            p(b, "打开 about:config 进行如下配置，强制开启 WebRender：gfx.webrender.all=true、gfx.webrender.compositor=true、gfx.webrender.compositor.force-enabled=true。然后开启 VAAPI：media.ffmpeg.vaapi.enabled=true、media.hardware-video-decoding.force-enabled=true。")
            h3(b, "第二步：确认 Hardware video acceleration 是否生效")
            p(b, "重启 Firefox，打开 about:support 页面。确认 WEBRENDER 和 HARDWARE_VIDEO_DECODING 已经开启。这里着重说明一点，你有可能在 env 一栏中看到 Blocklisted; failure code FEATURE_FAILURE_DISABLE_RELEASE_OR_BETA 或 FEATURE_HARDWARE_VIDEO_DECODING_DISABLE 这样的内容。")
            raw(b, "<blockquote>但只要看到 user 一栏写着 force_enabled、Force enabled by pref，就说明已经开启成功了。系统默认的配置已经被用户设置所覆盖。</blockquote>")
            p(b, "Arch Linux Wiki 存在一定的误导，并不是看到 FEATURE_HARDWARE_VIDEO_DECODING_DISABLE 就必须使用 firefox-vaapi 费时费力修改源码重新编译。只需要到 about:config 修改上步提到的那几个配置项就OK了。firefox-vaapi 只是让浏览器不再显示错误信息而已，完全没有必要。")
            p(b, "再向下拉到 Media 一节，看到相应的解码器信息便说明 Hardware video acceleration 已经成功开启生效。")
            a(b, attrs("href", "https://blog.bgme.me/posts/2023/how-to-enable-firefox-hardware-video-acceleration-on-linux-for-amd-gpu/"), "阅读原文")
        }
    )
}
