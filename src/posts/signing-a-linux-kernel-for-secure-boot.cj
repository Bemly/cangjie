package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSigningALinuxKernelForSecureBootPost(): Post {
    return Post(
        "signing-a-linux-kernel-for-secure-boot",
        "Signing a Linux Kernel for Secure Boot",
        "[https://gloveboxes.github.io/Ubuntu-for-Azure-Developers/...](https://gloveboxes.github.io/Ubuntu-for-Azure-Developers/docs/signing-kernel-for-secure-boot.html)",
        "原文待补充：Signing a Linux Kernel for Secure Boot",
        { b =>
            h2(b, "Signing a Linux Kernel for Secure Boot")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Ubunt..."), "阅读原文")
        }
    )
}
