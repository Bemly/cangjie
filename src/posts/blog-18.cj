package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog18Post(): Post {
    return Post(
        "blog-18",
        "国产操作系统环境搭建",
        "2021-12-31",
        "国产操作系统（UOS、银河麒麟、中科方德）的虚拟机搭建指南，涵盖不同 CPU 架构的镜像下载。",
        { b =>
            p(b, "随着中美科技战的酝酿和发展，国家越来越重视自主可控的操作系统的发展和推广。近些年国产操作系统如雨后春笋一般冒出来很多，包括：中标麒麟、银河麒麟、UOS、中科方德等。")
            h2(b, "分类")
            p(b, "UOS 和中科方德是基于 Debian 的，银河麒麟是基于 Ubuntu 系统的。因此在新建 UOS 和中科方德系统的虚拟机时要注意操作系统类型要选择 Debian，建议选择 Debian 9.x 64 位。")
            h2(b, "UOS 注意事项")
            p(b, "由于 UOS 系统对内存有要求，虚拟机内存不能小于 4G。磁盘空间需要分配 100G。电脑性能不好的话不建议开启特效。UOS 包含三个版本：amd64 架构（海光和兆芯）、arm 架构（鲲鹏、飞腾、麒麟 990）和 mips 架构（中标龙心）。")
            raw(b, "<pre><code>arch  # 查看当前系统硬件芯片架构</code></pre>")
            h2(b, "银河麒麟")
            p(b, "银河麒麟是基于 Ubuntu 系统的，建立虚拟机时需要选择 Ubuntu x64。磁盘大小要分配 60G 以上。银河麒麟也分为 x86、ARM64、MIPS64、LOONGARCH 四个版本。")
            p(b, "银河麒麟从一开始到现在 V10 和 V10.1，用户体验上做得越来越友好。随着国家投入和关注程度的提高，国产操作系统正在快速从能用到好用发展。")
            a(b, attrs("href", "https://blog.csdn.net/yang1fei2/article/details/120250808"), "阅读原文")
        }
    )
}
