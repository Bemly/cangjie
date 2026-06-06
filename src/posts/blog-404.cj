package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog404Post(): Post {
    return Post(
        "blog-404",
        "除了百度，还有哪些好用的搜索引擎？ - 奔跑中的奶酪",
        "2021-08-08",
        "最全的搜索引擎合集，涵盖通用搜索、繁体引擎、区域引擎等各类搜索引擎。",
        { b =>
            h2(b, "最全！除了百度，还有哪些好用的搜索引擎？")
            p(b, "奔跑中的奶酪网站整理了一份非常全面的搜索引擎合集，涵盖通用搜索、繁体引擎、区域引擎等多种类型。文章发布于2020年10月，阅读量接近30万。")
            p(b, "通用搜索方面：百度是国内第一大搜索引擎，必应是国内第二大搜索引擎（有国内版和国际版区别），搜狗是国内第三大搜索引擎，谷歌是世界第一大搜索引擎。")
            p(b, "繁体引擎方面：百度台湾、Yahoo奇摩、Google台湾都支持中国台湾的繁体中文搜索。")
            p(b, "区域引擎方面：Yandex（俄国，支持中文）、AOL和Ask（美国，支持中文）、Qwant（法国，不支持中文但支持英文）、NAVER（韩国，不支持中文也不支持英文）、Yahoo JP和Google JP（日本）等。")
            p(b, "文章还推荐了一些其他搜索引擎和搜索技巧，包括Fireball（德国）和HotBot（加拿大）等。")
            p(b, "该网站由\"奔跑中的奶酪\"原创创作，ICP证号为粤ICP备18015107号，网站已运营多年，积累了大量实用资源。")
            a(b, attrs("href", "https://www.runningcheese.com/search-engines"), "阅读原文")
        }
    )
}
