package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDnsapiAcmeshOfficialacmeshWikiPost(): Post {
    return Post(
        "dnsapi-acmesh-officialacmesh-wiki",
        "dnsapi · acmesh-official/acme.sh Wiki",
        "2024-09-25",
        "GitHub Wiki：dnsapi · acmesh-official/acme.sh Wiki",
        { b =>
            h2(b, "dnsapi · acmesh-official/acme.sh Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/acmesh-official/acme.sh/wiki/dnsapi#dns_pdns"), "访问原始链接")
        }
    )
}
