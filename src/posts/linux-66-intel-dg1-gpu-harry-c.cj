package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux66IntelDg1GpuHarryCPost(): Post {
    return Post(
        "linux-66-intel-dg1-gpu-harry-c",
        "在 Linux 6.6 上使用 Intel DG1 GPU 加速视频编解码",
        "2024-08-11",
        "记录在 TrueNAS (Linux 6.6) 上使用 Intel DG1 GPU 为 Jellyfin 提供硬件加速视频编解码的完整过程。",
        { b =>
            h2(b, "背景")
            p(b, "最近利用闲暇计算资源攒了个 NAS，运行 TrueNAS 系统，并使用 Jellyfin 作为流媒体播放平台。Jellyfin 会根据客户端情况决定是否要对视频进行重新编解码。但即使是分配了 64 核的 7742，也对高码率的 HEVC 10bit 视频力不从心，更不用说 HDR 视频还需要额外做 tone mapping，帧率甚至不到个位数。因此，使用 GPU 加速迫在眉睫。")
            h2(b, "硬件选择：Intel DG1")
            p(b, "在 Intel 员工的推荐下，从闲鱼花 260 元购买了一块蓝戟代工的 DG1 MAX 显卡。DG1 是 Intel 的第一代独立显卡，基于 Iris Xe（Gen12）架构。96EU 版本，核心频率 1.5GHz，显存 4GB GDDR6，TDP 30W，PCIe 4.0 x4 接口。DG1 的 3D 加速性能虽然一般，但在编码方面可以支持 32 路并行的 1080P HEVC 10bit 视频流编码，还有硬件加速 BT.2390 tone mapping，性价比极高。")
            h2(b, "第 0 步：ESXi 虚拟机 PCI Passthrough")
            p(b, "TrueNAS 运行在 ESXi 虚拟机上，需要确认 BIOS 中 IOMMU、SR-IOV、Above 4G Decoding 等功能已打开，在 ESXi 中找到 GPU 并启用 passthrough，设置虚拟机为 EFI 模式并增加 GPU 设备，在 vmx 文件中增加 pciPassthru.use64bitMMIO=TRUE 和 pciPassthru.64bitMMIOSizeGB=8 配置。")
            h2(b, "第 1 步：移植 i915 backport 驱动到 Linux 6.6")
            p(b, "DG1 在内核使用的是 i915 模块驱动，但 DG1 的支持并没有合并到上游。只能使用 Intel 提供的 intel-gpu-i915-backports OOT 模块。然而此模块仅对有限的内核版本提供支持，最新的 backport/main 分支只支持 Ubuntu 22.04 对应的 6.5.x LTS 内核，而 TrueNAS 24.04 使用的是 6.6.x 内核。")
            p(b, "作者基于 backport/RELEASE_2405_23.10 分支进行了 dirty fix，修复了编译错误。安装模块后还需要从 intel-gpu/intel-gpu-firmware 下载固件 blob 放置在 /lib/firmware/i915。成功后应该能看到 /dev/dri/renderD128 出现。")
            raw(b, "<blockquote>更新：Linux 6.9 带的 xe 驱动可以支持 DG1，无需进行任何改动。六月发布的 backports 驱动也已支持到了 Linux 6.8。</blockquote>")
            h2(b, "第 2 步：用户态驱动 Intel Media Driver")
            p(b, "用户态驱动是 Intel Media Driver，包名为 intel-media-va-driver-non-free。安装后可通过 vainfo 查看是否能正常识别 DG1。但在移植完 i915 模块后，vainfo 运行时会出现 Segmentation Fault。")
            p(b, "问题源头是 UMD 硬件检测阶段使用了 I915_MMAP_OFFSET_FIXED 的 flag，但 KMD 的对应处理函数中没有这个 flag（upstream 驱动中有）。作者通过在 i915_gem_mman.c 中增加 case 4 绕过了失败分支，成功让用户态驱动工作。")
            raw(b, "<blockquote>免责声明：这样的修改可能造成 GPU 挂起、内核内存泄漏甚至 PANIC。使用需自担风险。</blockquote>")
            h2(b, "第 3 步：Jellyfin 配置与测试")
            p(b, "使用 LinuxServer.io 提供的 Jellyfin Docker 镜像，将 /dev/dri 设备映射到容器中。容器内还需安装 intel-opencl-icd 以提供 OpenCL 支持（用于 tone mapping）。")
            p(b, "在 Jellyfin 转码设置中打开硬件加速，选择 Intel QuickSync（不要选 VAAPI），启用所有硬件解码功能和 VPP 色调映射。测试结果：大范围拖动时间轴的延时只有 2-3 秒，对 80Mbps HEVC 10bit HDR 视频的实时转码帧率可达 120 FPS 左右。")
            p(b, "结语：两百块的显卡，两千块的体验，同时也对 Linux 的图形栈有了更深的认识。")
            a(b, attrs("href", "https://harrychen.xyz/2024/04/01/accelerate-video-encoding-with-intel-dg1-on-linux-6.6/"), "阅读原文")
        }
    )
}
