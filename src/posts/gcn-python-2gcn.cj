package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGcnPython2gcnPost(): Post {
    return Post(
        "gcn-python-2gcn",
        "GCN python 实现2：利用GCN进行节点分类 - 谁动了我的奶盖 - 博客园",
        "2024-11-10",
        "原文待补充：GCN python 实现2：利用GCN进行节点分类 - 谁动了我的奶盖 - 博",
        { b =>
            h2(b, "GCN python 实现2：利用GCN进行节点分类 - 谁动了我的奶盖 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/Ann21/p/11648964.html"), "阅读原文")
        }
    )
}
