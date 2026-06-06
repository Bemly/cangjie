package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYandeximagesImageSearchPost(): Post {
    return Post(
        "yandeximages-image-search",
        "Yandex.Images: image search",
        "2022-01-08",
        "原文待补充：Yandex.Images: image search",
        { b =>
            h2(b, "Yandex.Images: image search")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://yandex.com/images/search?rpt=imageview&url=https%3A%2F%2Favatars.mds.yandex.net%2Fget-images-cbir%2F1617661%2F0HMlJPTx2UF1bLbcIaT2rw3513%2Forig&cbir_id=1617661%2F0HMlJPTx2UF1bLbcIaT2rw3513"), "阅读原文")
        }
    )
}
