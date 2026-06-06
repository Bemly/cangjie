package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux16MsdosgptPost(): Post {
    return Post(
        "linux16-msdosgpt",
        "Linux学习16-磁盘分区MSDOS与GPT的区别_你的微笑像茉莉的博客-CSDN博客",
        "2021-10-02",
        "原文待补充：Linux学习16-磁盘分区MSDOS与GPT的区别_你的微笑像茉莉的博客-CS",
        { b =>
            h2(b, "Linux学习16-磁盘分区MSDOS与GPT的区别_你的微笑像茉莉的博客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/free050463/article/details/81876521"), "阅读原文")
        }
    )
}
