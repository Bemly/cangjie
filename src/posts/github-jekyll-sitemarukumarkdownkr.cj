package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubJekyllSitemarukumarkdownkrPost(): Post {
    return Post(
        "github-jekyll-sitemarukumarkdownkr",
        "github jekyll site不再采用Maruku做为Markdown的解释器,而是kramdown",
        "2024-02-04",
        "将博客推送到Github上的Jekyll站点时遇到Maruku过时错误，需要在_config.yml中改为kramdown解析器",
        { b =>
            h2(b, "github jekyll site不再采用Maruku做为Markdown的解释器,而是kramdown")
            p(b, "今天写了一篇博客，把它push到jekyll site on github上，发现老是出错，给的邮件信息如下：")
            raw(b, "<blockquote>The page build completed successfully, but returned the following warning: Your site is using Maruku, the default Markdown interpreter. Maruku is now obsolete and may cause builds to fail for sites with invalid Markdown or HTML.</blockquote>")
            p(b, "上Github Help链接一看，发现Maruku项目于2012年10月关闭并停止更新了，相应地github也不采用这个解释器，而是采用kramdown解释器。")
            p(b, "你只要在_config.yml文件里加上以下代码，让系统采用kramdown解释器就可以了：")
            raw(b, "<blockquote>markdown: kramdown</blockquote>")
            p(b, "果然成功，我的GITHUB博客地址为：http://aborn.github.io/")
            a(b, attrs("href", "https://blog.csdn.net/loveaborn/article/details/25535227"), "阅读原文")
        }
    )
}
