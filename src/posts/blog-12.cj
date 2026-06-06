package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog12Post(): Post {
    return Post(
        "blog-12",
        "安卓抓包——安卓7+导证书到系统目录",
        "2021-05-26",
        "本文详细指导如何在 Android 7 及以上设备上将用户证书迁移至系统目录，包括证书查找、导出、哈希值计算与迁移步骤。",
        { b =>
            p(b, "本文详细指导如何在 Android 7 及以上设备上进行 root 操作，并介绍如何将系统和用户证书迁移至系统目录，包括证书查找、导出、哈希值计算与迁移步骤，以及可能遇到的问题与解决方案。")
            h2(b, "要求")
            p(b, "先要将手机 Root。")
            h2(b, "1. 系统证书")
            p(b, "首先看看系统证书目录：")
            raw(b, "<pre><code>adb shell\ncd /system/etc/security/cacerts</code></pre>")
            p(b, "系统证书的命名都是 哈希值.0，如果哈希值相同，想要保留证书，那就修改后面的 .0 即可。")
            h2(b, "2. 用户证书")
            raw(b, "<pre><code>su  # 先进入超级用户\ncd /data/misc/keystore/user_0</code></pre>")
            h2(b, "3. 将用户证书放到系统目录中")
            p(b, "导出待处理证书到 PC 桌面，先将文件名构造为 哈希值.0，然后导出证书到 PC。")
            a(b, attrs("href", "https://blog.csdn.net/qq_39551311/article/details/115279589"), "阅读原文")
        }
    )
}
