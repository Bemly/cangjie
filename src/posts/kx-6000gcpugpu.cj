package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKx6000gcpugpuPost(): Post {
    return Post(
        "kx-6000gcpugpu",
        "兆芯KX-6000G曝光，CPU和GPU均有不小提升",
        "2022-08-13",
        "原文待补充：兆芯KX-6000G曝光，CPU和GPU均有不小提升",
        { b =>
            h2(b, "兆芯KX-6000G曝光，CPU和GPU均有不小提升")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1739880260539737377&wfr=spider&for=pc&searchword=%E5%85%86%E8%8A%AF%20kx%206000g"), "阅读原文")
        }
    )
}
