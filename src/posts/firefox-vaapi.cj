package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFirefoxVaapiPost(): Post {
    return Post(
        "firefox-vaapi",
        "Firefox 使用 VAAPI 硬解视频",
        "2024-08-10",
        "本文记录了在X11下设置Firefox调用VAAPI硬解视频，提供了验证VAAPI是否启用的方法，对比了低码率下硬解与软解的CPU占用与功耗。",
        { b =>
            h2(b, "Firefox 使用 VAAPI 硬解视频")
            p(b, "本文记录了在 X11 下设置 Firefox 调用 VAAPI 硬解视频，提供了验证 VAAPI 是否启用的方法，对比了低码率下硬解与软解的 CPU 占用与功耗。")
            h3(b, "查看显卡支持的编码")
            p(b, "Firefox 通过 VAAPI 硬解视频，首先要了解显卡支持解码的编码。运行 vainfo 命令可以查看支持的编码格式。输出结果中，VAEntrypointVLD 表示显卡支持解码此格式，VAEntrypointEncSlice 表示支持编码此格式。例如 AMD 核显可以解码 VP9、AVC(H264) 和 HEVC，但不能解码 AV1。")
            h3(b, "设置 Firefox")
            p(b, "在 Firefox 的地址栏输入 about:support，打开 Troubleshooting Information 页面，找到 HARDWARE_VIDEO_DECODING。如果这里的值是 available by default，那么视频硬解已经开启了。如果被禁用，可以打开 about:config，将 media.hardware-video-decoding.force-enabled 改为 true，重启 Firefox 即可强制开启。")
            h3(b, "视频网站设置")
            p(b, "显卡支持解码的编码种类有限，视频网站提供的编码未必受显卡支持。例如 BiliBili 默认的编码格式是 AV1，如果核显不支持 AV1，需要修改视频编码设置使用 AVC(H264) 格式。点击视频右下角的齿轮，在播放策略中选择 AVC，刷新网站即可。")
            h3(b, "验证 Firefox 是否使用 VAAPI")
            p(b, "设置 MOZ_LOG 环境变量后启动 Firefox，使之打印相关信息：MOZ_LOG=\"PlatformDecoderModule:5\" firefox。播放视频，观察 Firefox 的输出。如果 VAAPI 被启用，就能看到输出大量包含 VAAPI 的日志。")
            h3(b, "低码率下对比软解与硬解")
            p(b, "一般而言，分辨率和码率越高，软解占用的 CPU 越多。对于低码率 1080P 视频，硬解仍然 CPU 占用更少、功耗更低。通过测试：软解时 Firefox 的三个进程合计使用 CPU 70% 左右，功耗在 8W 到 10W 间波动；硬解时合计 CPU 60% 左右，功耗保持在 8.5W 左右几乎不变。因此推荐开启硬解。")
            a(b, attrs("href", "https://blog.zhaozuohong.vip/2022/11/16/firefox-vaapi/"), "阅读原文")
        }
    )
}
