package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB2SureingPost(): Post {
    return Post(
        "b2-sureing",
        "b站2压后参数 - Sureing - 博客园",
        "2024-08-12",
        "记录B站视频二次压制后的MediaInfo参数，涵盖1080p、4K、8K三种分辨率。",
        { b =>
            h2(b, "1080P CBR 60Mbps 被2压后参数")
            p(b, "格式：MPEG-4，编码器：AVC High@L5.1，文件大小 372 MiB，时长 6 分 6 秒，总体码率 8511 kb/s。视频部分码率 8280 kb/s，分辨率 1920x1080，帧率 60 FPS（动态帧率），色彩空间 YUV 4:2:0，位深 8 位。音频部分为 AAC LC，码率 217 kb/s，双声道，采样率 48.0 kHz。说明中标注 Packed by Bilibili XCoder v2.0.2。")
            h2(b, "4K 被B站2压后参数")
            p(b, "格式：MPEG-4，编码器：AVC High@L5.2，文件大小 562 MiB，时长 6 分 35 秒，总体码率 11.9 Mb/s。视频部分码率 11.7 Mb/s，分辨率 3840x2160，帧率 60 FPS（动态帧率），参考帧 6 帧，色彩空间 YUV 4:2:0，位深 8 位，色彩标准 BT.709。音频部分为 AAC LC，码率 174 kb/s，双声道，采样率 44.1 kHz。")
            h2(b, "8K 被B站2压后参数")
            p(b, "格式：MPEG-4，编码器：AV1 Main@L6.0，文件大小 8.46 GiB，时长 57 分 6 秒，总体码率 21.2 Mb/s。视频部分码率 21.1 Mb/s，分辨率 7680x4320，帧率 30 FPS（动态帧率），色彩空间 YUV 4:2:0，位深 8 位，色彩标准 BT.709。音频部分为 AAC LC，码率 115 kb/s，双声道，采样率 44.1 kHz。")
            h2(b, "总结对比")
            p(b, "1080P 和 4K 视频均使用 AVC 编码，而 8K 视频则使用了 AV1 编码。三种分辨率的视频都经过了 Bilibili XCoder v2.0.2 的二次压制，采用了动态帧率（VFR）模式。随着分辨率提升，视频编码格式从 AVC 升级到 AV1，音频采样率从 48.0 kHz 降至 44.1 kHz。")
            a(b, attrs("href", "https://www.cnblogs.com/pengpengboshi/p/18161870"), "阅读原文")
        }
    )
}
