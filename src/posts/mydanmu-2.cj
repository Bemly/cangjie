package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMydanmu2Post(): Post {
    return Post(
        "mydanmu-2",
        "my_danmu",
        "2022-07-10",
        "原文待补充：my_danmu",
        { b =>
            h2(b, "my_danmu")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://console-docs.apipost.cn/preview/508e9181d81a978c/d92a27922cea066a?target_id=&url=508e9181d81a978c&salt=d92a27922cea066a#b9ce2fcf-2f24-4f5c-8b93-c82254714851"), "阅读原文")
        }
    )
}
