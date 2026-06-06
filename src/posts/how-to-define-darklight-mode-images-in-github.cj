package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowToDefineDarklightModeImagesInGithubPost(): Post {
    return Post(
        "how-to-define-darklight-mode-images-in-github",
        "How to define dark/light mode images in GitHub ...",
        "2024-09-11",
        "原文待补充：How to define dark/light mode images in ",
        { b =>
            h2(b, "How to define dark/light mode images in GitHub ...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.stefanjudis.com/notes/how-to-define-dark-light-mode-images-in-github-markdown/"), "阅读原文")
        }
    )
}
