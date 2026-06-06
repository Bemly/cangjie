package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getQemuKvmPost(): Post {
    return Post(
        "qemu-kvm",
        "QEMU-KVM基本原理 - 疯一样的狼人 - 博客园",
        "2024-08-09",
        "原文待补充：QEMU-KVM基本原理 - 疯一样的狼人 - 博客园",
        { b =>
            h2(b, "QEMU-KVM基本原理 - 疯一样的狼人 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/wujuntian/p/16294898.html"), "阅读原文")
        }
    )
}
