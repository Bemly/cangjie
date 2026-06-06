package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJsdelivrwujiuqierPost(): Post {
    return Post(
        "jsdelivrwujiuqier",
        "使用jsdelivr时不要瞎搞_wujiuqier的博客-CSDN博客_jsdelivr",
        "2022-04-24",
        "本文解析了jsdelivr在8月15日更新的使用条款，强调禁止作为通用文件或媒体托管服务，违规使用会被阻断连接。",
        { b =>
            h2(b, "使用jsdelivr时不要瞎搞")
            p(b, "8月15日jsdelivr在官网更新了使用条款，其中有几处被很多人忽略了，瞎搞很容易被jsdelivr阻断连接。以下是需要注意的地方。")
            p(b, "第4条禁止的使用行为包括：将jsDelivr作为通用文件或媒体托管服务，例如开设图床并使用jsdelivr存储上传的图片，或者存放视频、文件备份等大量文件。所以不要试图在jsdelivr存放太大的媒体文件！随时会被阻断连接！")
            raw(b, "<blockquote>Abusing the service and its resources, or using jsDelivr as a general-purpose file or media hosting service. This includes, for example: running an image hosting website and using jsDelivr as a storage for all uploaded images, hosting videos, file backups, or other files in large quantities.</blockquote>")
            p(b, "第5条强调在国内使用jsdelivr一定要遵纪守法。jsdelivr持有中国政府颁发的ICP许可证，允许在中国大陆直接运营基础设施。但为了保持此许可证，通过中国网络提供的任何内容必须符合中国政策。违规内容会被不警告直接封停！")
            raw(b, "<blockquote>jsDelivr holds an ICP license issued by the Chinese government. Any content served via our Chinese network must conform to Chinese policies. Content potentially violating Chinese policies may be blocked in China without warning.</blockquote>")
            p(b, "所以现在使用jsdelivr一定不能瞎搞，瞎搞很容易被jsdelivr查抄！")
            a(b, attrs("href", "https://blog.csdn.net/qq_35977139/article/details/108218431"), "阅读原文")
        }
    )
}
