package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBashZshFishPost(): Post {
    return Post(
        "bash-zsh-fish",
        "写一个 bash zsh 和 fish 都能跑的脚本 - 杰哥的{运维，编程，调板子}小笔记",
        "2024-08-18",
        "原文待补充：写一个 bash zsh 和 fish 都能跑的脚本 - 杰哥的{运维，编程，调",
        { b =>
            h2(b, "写一个 bash zsh 和 fish 都能跑的脚本 - 杰哥的{运维，编程，调板子}小笔记")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://jia.je/programming/2023/07/18/portable-script-across-bash-zsh-fish/#%E5%A4%8D%E6%9D%82%E7%89%88%E6%9C%AC"), "阅读原文")
        }
    )
}
