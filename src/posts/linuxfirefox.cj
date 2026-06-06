package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxfirefoxPost(): Post {
    return Post(
        "linuxfirefox",
        "让Linux的Firefox使用硬件加速",
        "2024-08-10",
        "在Linux上配置Firefox使用VAAPI硬件加速的详细步骤，包括about:config配置和验证方法。",
        { b =>
            h2(b, "让Linux的Firefox使用硬件加速")
            p(b, "硬件加速省电！Firefox 对笔记本双显卡不太友好，检测会出问题，貌似在102版本之后修好了，会自动选用合适的显卡。")
            h3(b, "about:config 配置")
            p(b, "按照下面的配置修改 about:config 里面的值：gfx.webrender.all=true（让 WebRender 能在 PRIME 环境下用核心显卡的硬件加速）、gfx.webrender.enabled=true（开启 WebRender，VAAPI必须）、gfx.x11-egl.force-enabled=true（若 Firefox 版本小于94，强制在 X11 启用 EGL 接口渲染）。")
            p(b, "继续配置：media.ffmpeg.vaapi.enabled=true（开启 VAAPI）、media.ffvpx.enabled=false（禁用内置vp8/9解码器，可能有优先级bug，版本102及以上不需要）、media.navigator.mediadatadecoder_vpx_enabled=true（WebRTC 硬件解码）、media.rdd-vpx.enabled=false（把部分解码器线程挪出 RDD 沙盒，避免找不到库，版本102及以上不需要）。")
            h3(b, "验证浏览器是否正在使用 VAAPI 硬件解码")
            p(b, "在命令行设置环境变量 MOZ_LOG=\"PlatformDecoderModule:5\" 并启动 Firefox，比如：env MOZ_LOG=\"PlatformDecoderModule:5\" firefox。然后打开一个测试视频，看看日志里有关 VA-API 的输出。")
            h3(b, "补充说明")
            p(b, "由于 Firefox 的一些问题，上面的参数仍不能开启旧版 Firefox 的 VAAPI 视频解码。如果有需要，需要完全关闭 RDD 沙箱：env MOZ_DISABLE_RDD_SANDBOX=1 firefox。注意：使用上述方法将带来一定安全隐患，请务必确认自己的需求、注意计算机系统安全！")
            p(b, "版本102及以上不需要再手动关闭 RDD 沙箱或禁用内置解码器，Firefox 已经修复了相关问题，只需开启 VAAPI 和 WebRender 相关配置即可。")
            a(b, attrs("href", "https://techie-s.work/posts/2022/03/run-firefox-with-hardware-acceleration-on-linux/"), "阅读原文")
        }
    )
}
