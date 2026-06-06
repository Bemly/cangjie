package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxfclashKingtousPost(): Post {
    return Post(
        "linuxfclash-kingtous",
        "自制Linux下科研工具fclash简介 - Kingtous的博客",
        "[https://kingtous.cn/2022/05/09/%E8%87%AA%E5%88%B6fclash%E...](https://kingtous.cn/2022/05/09/%E8%87%AA%E5%88%B6fclash%E7%AE%80%E4%BB%8B/)",
        "原文待补充：自制Linux下科研工具fclash简介 - Kingtous的博客",
        { b =>
            h2(b, "自制Linux下科研工具fclash简介 - Kingtous的博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Kingtous'..."), "阅读原文")
        }
    )
}
