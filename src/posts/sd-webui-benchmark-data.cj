package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSdWebuiBenchmarkDataPost(): Post {
    return Post(
        "sd-webui-benchmark-data",
        "SD WebUI Benchmark Data",
        "2023-11-23",
        "SD WebUI性能基准测试数据，使用SD WebUI Extension System Info自动生成，每小时更新一次。",
        { b =>
            h2(b, "SD WebUI Benchmark Data")
            p(b, "Benchmark data is created using SD WebUI Extension System Info. Performance is measured as iterations per second for different batch sizes (1, 2, 4, 8 ...) and using standardized txt2img settings.")
            p(b, "The benchmark data is updated automatically hourly if new data is found. The page displays a comprehensive table of benchmark results from various systems.")
            h2(b, "示例数据")
            p(b, "Example entry: NVIDIA GeForce RTX 3060 (12GB) running stable-diffusion-webui 2024-07-27 achieves 7.41 it/s with torch.float16 dtype, using the myself8.0 model at 512x512 resolution.")
            p(b, "AMD Radeon RX 7700 XT [ZLUDA] running sdnext achieves 4.75 it/s with torch.bfloat16 dtype, using the urpm_v13 model at 512x512 resolution.")
            p(b, "NVIDIA GeForce RTX 3090 (24GB) running sdnext on Manjaro Linux achieves 20.69 it/s with torch.bfloat16 dtype, using v1-5-pruned-fp16-emaonly model at 512x512 resolution.")
            h2(b, "测试参数")
            p(b, "The benchmark tracks: date, iterations per second, app version, system info (OS, CPU, Python version), library versions (torch, xformers, diffusers, transformers), GPU info, optimization settings, model details, and username.")
            p(b, "Data can be downloaded in raw format for further analysis.")
            a(b, attrs("href", "https://vladmandic.github.io/sd-extension-system-info/pages/benchmark.html"), "阅读原文")
        }
    )
}
