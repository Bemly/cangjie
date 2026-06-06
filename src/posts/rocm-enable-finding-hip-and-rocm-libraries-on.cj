package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRocmEnableFindingHipAndRocmLibrariesOnPost(): Post {
    return Post(
        "rocm-enable-finding-hip-and-rocm-libraries-on",
        "[ROCm] Enable finding HIP and ROCm libraries on...",
        "2025-01-24",
        "GitHub PR：[ROCm] Enable finding HIP and ROCm libra",
        { b =>
            h2(b, "[ROCm] Enable finding HIP and ROCm libraries on...")
            p(b, "此链接为 GitHub Pull Request，非博客文章。")
            a(b, attrs("href", "https://github.com/pytorch/pytorch/pull/137279"), "访问原始链接")
        }
    )
}
