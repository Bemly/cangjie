package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPricingCalculatorPost(): Post {
    return Post(
        "pricing-calculator",
        "Pricing Calculator",
        "2024-08-15",
        "GitHub 仓库：Pricing Calculator",
        { b =>
            h2(b, "Pricing Calculator")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/pricing/calculator?feature=actions"), "访问原始链接")
        }
    )
}
