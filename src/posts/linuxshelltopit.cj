package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxshelltopitPost(): Post {
    return Post(
        "linuxshelltopit",
        "Linux下shell命令：top_IT老兵的驿站-CSDN博客_shell top",
        "2021-12-23",
        "原文待补充：Linux下shell命令：top_IT老兵的驿站-CSDN博客_shell t",
        { b =>
            h2(b, "Linux下shell命令：top_IT老兵的驿站-CSDN博客_shell top")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/chaiyu2002/article/details/80850299"), "阅读原文")
        }
    )
}
