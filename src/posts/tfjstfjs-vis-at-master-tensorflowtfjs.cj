package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTfjstfjsVisAtMasterTensorflowtfjsPost(): Post {
    return Post(
        "tfjstfjs-vis-at-master-tensorflowtfjs",
        "tfjs/tfjs-vis at master · tensorflow/tfjs",
        "2024-01-20",
        "GitHub 文件：tfjs/tfjs-vis at master · tensorflow/tfj",
        { b =>
            h2(b, "tfjs/tfjs-vis at master · tensorflow/tfjs")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/tensorflow/tfjs/tree/master/tfjs-vis"), "访问原始链接")
        }
    )
}
