package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKx6000gcpugpuPost(): Post {
    return Post(
        "kx-6000gcpugpu",
        "兆芯KX-6000G曝光，CPU和GPU均有不小提升",
        "2022-08-13",
        "兆芯KX-6000G处理器测试结果曝光，集成ZX C1080 GPU，3Dmark11成绩超1000分，GPU性能提升318%。",
        { b =>
            h2(b, "兆芯KX-6000G曝光，CPU和GPU均有不小提升")
            p(b, "随着近两年各国产半导体厂商的持续发力，国内半导体正在快速发展，国产的处理器在CPU和GPU的性能也均有不小的提升。近日，有媒体曝光了兆芯KX-6000G处理器的测试结果。")
            h2(b, "GPU性能大幅提升")
            p(b, "据3Dmark11显示，KX-6000G处理器中集成了ZX C1080 GPU，P模式下图形单项成绩超过了1000分，稳坐国产GPU头名，而且对比之前的C960（大约250-260左右）提升幅度达318%。")
            p(b, "同时据3DMark显示，这款尚未发布的处理器集成了高性能的格兰菲Glenfly Arise-GT-10C0芯片。")
            h2(b, "Glenfly Arise-GT-10C0规格")
            p(b, "据了解，Arise-GT10C0的GPU频率为500MHz，显存位宽64bit / 128bit，可搭配2GB / 4GB DDR4内存，频率1200MHz，FP32浮点性能可达1.5TFLOPS。据媒体对比，其3Dmark11跑分相当于NVIDIA GT 630独显。")
            p(b, "Glenfly Arise-GT-10C0基于28nm工艺制造，内置完全独立自主研发的新一代图形图像处理引擎，兼容银河麒麟KOS、统信软件UOS、Windows等主流操作系统，同时可在X86、ARM、MIPS等主流硬件平台操作运行。支持DirectX11、OpenGL4.5、OpenCL1.2等图形API，支持4K高清显示与视频播放。")
            h2(b, "CPU性能提升")
            p(b, "据爆料，在7zip测试下，KX-6000G处理器多核成绩超过了12000分，对比之前的KX-6000四核产品成绩上涨了接近30%。除此之外，KX-6000G的功耗控制要明显优于目前KX-6000（16nm CMOS）四核产品。")
            p(b, "在7月份早些时候，兆芯格兰菲公布了GT10C0显卡，GPU频率500MHz，单精度浮点性能1.5TFLOPS，显存为DDR4，可选2GB 64bit或4GB 128bit，支持PCIe 3.0，接口包括HDMI、DP和VGA。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1739880260539737377&wfr=spider&for=pc&searchword=%E5%85%86%E8%8A%AF%20kx%206000g"), "阅读原文")
        }
    )
}
