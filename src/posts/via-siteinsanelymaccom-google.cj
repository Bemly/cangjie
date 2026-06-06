package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getViaSiteinsanelymaccomGooglePost(): Post {
    return Post(
        "via-siteinsanelymaccom-google",
        "via site:insanelymac.com - Google 搜索",
        "2023-08-03",
        "搜索页面：via site:insanelymac.com - Google 搜索",
        { b =>
            h2(b, "via site:insanelymac.com - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?newwindow=1&client=firefox-b&sxsrf=AB5stBiSuTsatIDt80EVc3iGbuLod08U8A%3A1691026498639&q=via+site%3Ainsanelymac.com&oq=via+site%3Ainsanelymac.com&aqs=heirloom-srp.."), "访问原始链接")
        }
    )
}
