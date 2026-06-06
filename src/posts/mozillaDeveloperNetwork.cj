package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func MozillaDeveloperNetworkPost(): Post {
    return Post(
        "mozilla-developer-network",
        "Mozilla Developer Network",
        "2024-02-05",
        "MDN Web Docs 网站提供有关开放 Web 技术的信息，包括 HTML、CSS 以及适用于网站和渐进式 Web 应用的 API。",
        { b =>
            h2(b, "Mozilla Developer Network")
            p(b, "MDN Web Docs 网站提供有关开放 Web 技术的信息，包括 HTML、CSS 以及适用于网站和渐进式 Web 应用的 API。")
            a(b, attrs("href", "https://developer.mozilla.org/"), "访问 MDN Web Docs")
        }
    )
}
