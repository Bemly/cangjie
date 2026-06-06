package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHardwareVideoAccelerationArchwikiPost(): Post {
    return Post(
        "hardware-video-acceleration-archwiki",
        "Hardware video acceleration - ArchWiki",
        "2024-08-10",
        "ArchWiki关于Linux硬件视频加速的官方文档，涵盖VA-API、VDPAU、Vulkan Video等技术的安装、配置和验证方法。",
        { b =>
            h2(b, "Hardware video acceleration - ArchWiki")
            p(b, "硬件视频加速使得显卡可以解码/编码视频，从而减轻CPU负担并节省电力。在Linux上有几种方式可以实现：")
            p(b, "Video Acceleration API (VA-API) 是由Intel开发的规范和开源库，提供硬件加速的视频编码和解码。Video Decode and Presentation API for Unix (VDPAU) 是由NVIDIA开发的开源库和API，将部分视频解码过程和视频后处理卸载到GPU。Advanced Media Framework SDK (AMF) 是由AMD开发的开源框架。NVDEC/NVENC 是NVIDIA的专有API。Vulkan Video 是Vulkan图形API的扩展，支持硬件加速的视频编码和解码。")
            h3(b, "安装 - Intel")
            p(b, "Intel显卡开源驱动支持VA-API：HD Graphics系列从Broadwell(2014)及更新版本由intel-media-driver支持；GMA 4500(2008)到Coffee Lake(2017)由libva-intel-driver支持。Skylake或更新版本还需要linux-firmware-intel。")
            h3(b, "安装 - NVIDIA")
            p(b, "Nouveau开源驱动通过mesa支持VA-API（GeForce 8系列到GTX 750）。NVIDIA专有驱动支持VDPAU（GeForce 8系列及更新）、NVDEC（Fermi及更新）、NVENC（Kepler及更新）、Vulkan Video（Pascal及更新）。")
            h3(b, "安装 - AMD/ATI")
            p(b, "AMD和ATI开源驱动支持VA-API、Vulkan Video和AMF：VA-API通过mesa支持Radeon HD 2000及更新GPU；Vulkan Video通过RADV开源vulkan驱动支持；AMF在Fiji到RDNA 2由amf-amdgpu-pro驱动支持，RDNA 3及更新GPU通过amf-amdgpu支持。")
            h3(b, "验证")
            p(b, "使用vainfo命令验证VA-API设置。使用mpv --hwdec=auto video_filename测试硬件加速。使用nvtop检查DEC（解码器）使用情况。对于Intel GPU使用intel-gpu-tools运行intel_gpu_top；对于AMD GPU使用amdgpu_top。比较CPU使用情况，在VA-API启用时高分辨率视频的CPU使用应该显著降低。")
            h3(b, "翻译层")
            p(b, "libvdpau-va-gl：带有OpenGL/VAAPI后端的VDPAU驱动，仅支持H.264。nvidia-vaapi-driver：基于CUDA NVDEC的VA-API后端，虽然启用了硬件视频解码，但当前NVIDIA电源管理限制意味着默认设置下实际消耗的电力比CPU视频解码更多。")
            a(b, attrs("href", "https://wiki.archlinux.org/title/Hardware_video_acceleration"), "阅读原文")
        }
    )
}
