package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBonjourcraftlauncherGooglePost(): Post {
    return Post(
        "bonjourcraftlauncher-google",
        "BonjourCraftLauncher - Google 搜索",
        "2024-12-26",
        "搜索页面：BonjourCraftLauncher - Google 搜索",
        { b =>
            h2(b, "BonjourCraftLauncher - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?q=BonjourCraftLauncher&client=firefox-b-d&sca_esv=07813a0894f414fa&biw=1170&bih=2422&ei=hkBsZ72YKaKl2roPwJSdqA4&ved=0ahUKEwi989vcuMOKAxWiklYBHUBKB-UQ4dUDCBA&uact=5&oq=BonjourCraftLauncher&gs_lp=Egxnd3Mtd2l6LXNlcnAiFEJvbmpvdXJDcmFmdExhdW5jaGVyMggQABiABBiiBDIIEAAYgAQYogRIh0FQzQtYuj5wAXgBkAEAmAHWAqABjQuqAQUyLTMuMrgBA8gBAPgBAZgCBaAClQnCAgoQABiwAxjWBBhHwgIGEAAYDRgewgIKECEYoAEYwwQYCpgDAOIDBRIBMSBAiAYBkAYKkgcHMS4wLjIuMqAH2g4&sclient=gws-wiz-serp"), "访问原始链接")
        }
    )
}
