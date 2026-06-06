package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBootloaderUBootPost(): Post {
    return Post(
        "bootloader-u-boot",
        "Bootloader(启动引导程序)---＞u-boot_兰天禄的博客-CSDN博客",
        "2021-11-11",
        "原文待补充：Bootloader(启动引导程序)---＞u-boot_兰天禄的博客-CSDN",
        { b =>
            h2(b, "Bootloader(启动引导程序)---＞u-boot_兰天禄的博客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_43288201/article/details/107496580?utm_medium=distribute.wap_relevant.none-task-blog-2~default~baidujs_baidulandingword~default-0.wap_blog_relevant_pic&spm=1001.2101.3001.4242.1"), "阅读原文")
        }
    )
}
