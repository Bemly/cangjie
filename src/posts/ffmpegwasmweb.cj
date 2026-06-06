package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFfmpegwasmwebPost(): Post {
    return Post(
        "ffmpegwasmweb",
        "基于FFmpeg和Wasm的Web端视频截帧方案",
        "2024-08-13",
        "百度百家号自定义编译FFmpeg为Wasm，实现Web端高效视频关键帧提取",
        { b =>
            h2(b, "项目背景")
            p(b, "在视频编辑器中，用户上传视频后需要抽取关键帧供用户选取封面。传统的基于 canvas 的截帧方案存在三个问题：video 标签支持的视频格式有限（无法处理 FLV、MKV、AVI 等）；方案依赖 DOM，只能在主线程中完成，影响页面性能；无法精确控制抽帧策略，设置 currentTime 时浏览器解码寻找最接近的帧而非关键帧。")
            p(b, "为此，百度百家号团队采用 FFmpeg + WebAssembly 方案，通过自定义编译 FFmpeg，在 Web Worker 里执行 RGB24 格式数据到 ImageData 的运算，再传递结果给主线程。")
            h2(b, "Wasm 核心原理")
            p(b, "WebAssembly（Wasm）是一种用于基于堆栈的虚拟机的二进制指令格式，可作为编程语言的可移植编译目标，支持在 Web 上部署客户端和服务器应用。Chrome 的 V8 引擎使用分层编译模式：Liftoff 基线编译器快速生成可执行代码，TurboFan 优化编译器对热函数进行高级优化（内联缓存、死代码消除、循环展开等）。")
            p(b, "V8 还支持流式编译（下载同时编译）和代码缓存机制。当 .wasm 资源超过 128KB 时，Chrome 会将编译后的代码写入缓存，后续加载时直接反序列化，速度更快、CPU 占用更少。相比 V8 执行 JS 的流程，Wasm 省去了 Parser 生成 AST、Ignition 生成字节码的过程，性能更高。")
            h2(b, "截帧策略")
            p(b, "视频编码中的 I 帧（关键帧）不需要参考其他帧即可解码，包含信息量最大；P 帧通过运动预测参考前帧解码；B 帧参考前后帧解码，体积最小。理想状态下应只产出关键帧作为封面图。")
            p(b, "每视频需提取 12 张图片。对于关键帧少于 12 张的视频，采取补齐策略——在两关键帧之间以 2 秒为间隔补充。对于超出 12 张关键帧的视频，按等间隔选取。第一帧一定是 I 帧，第一时间读取并返回，让用户瞬间看到结果，其他帧确定后立即输出。")
            h2(b, "自定义编译 FFmpeg")
            p(b, "使用 Emscripten 工具链将 FFmpeg 编译为 Wasm。禁用了大部分平台特定优化，只编译截帧所需的库：libavformat（格式处理）、libavcodec（编解码）、libswscale（像素格式转换）和 libavutil（工具函数）。全量引入 @ffmpeg/ffmpeg 为 24.5MB，自定义编译后仅 4MB，体积大幅缩减。")
            p(b, "在 Web Worker 中使用 WORKERFS 文件系统，提供对 File 和 Blob 对象的只读访问，无需将整个数据复制到内存，防止大文件导致浏览器崩溃。JavaScript 通过 Module.cwrap 调用 C 函数，C 通过 emscripten_run_script 调用 JS，但应避免频繁调用以减少上下文切换开销。")
            h2(b, "FFmpeg 关键 API")
            p(b, "截帧流程使用的 FFmpeg API 包括：av_register_all 注册解码器，avformat_open_input 解析文件，avformat_find_stream_info 获取媒体信息，av_read_frame 读取压缩帧（flag=1 为关键帧），av_seek_frame 快速定位关键帧位置，avcodec_send_packet 和 avcodec_receive_frame 进行解码。")
            p(b, "该方案已在百家号视频场景落地数月，在速度、体验和视频兼容性方面均取得明显收益。自定义编译将产物从 24.5MB 压缩到 4MB，关键帧优先策略减少了用户等待时间。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1762487045480372821"), "阅读原文")
        }
    )
}
