package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPytorchWindows2915RocmrocmPost(): Post {
    return Post(
        "pytorch-windows-2915-rocmrocm",
        "[功能]： PyTorch Windows 支持 ·问题 #2915 ·ROCm/ROCm -...",
        "2025-01-24",
        "GitHub Issue：[功能]： PyTorch Windows 支持 ·问题 #2915 ·ROCm",
        { b =>
            h2(b, "[功能]： PyTorch Windows 支持 ·问题 #2915 ·ROCm/ROCm -...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/ROCm/ROCm/issues/2915"), "访问原始链接")
        }
    )
}
