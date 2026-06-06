package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustaceannetHomeOfFerrisTheCrabPost(): Post {
    return Post(
        "rustaceannet-home-of-ferris-the-crab",
        "Rustacean.net: Home of Ferris the Crab",
        "2024-07-01",
        "Ferris the Crab - Rust 编程语言的非官方吉祥物",
        { b =>
            h2(b, "Rustacean.net: Home of Ferris the Crab")
            p(b, "Rustacean.net 是 Rust 编程语言非官方吉祥物 Ferris the Crab 的主页。Ferris 是一只可爱的螃蟹，代表了 Rust 社区的精神和文化。")
            p(b, "Ferris 的代词是任意的 - she/he/they/it 都可以！这体现了 Rust 社区的包容性和多样性。")
            h2(b, "可用资源")
            p(b, "网站提供了多种格式的 Ferris 形象：原始版、扁平版、超可爱版、开心版和手势版，每种都有 PNG 和 SVG 两种格式可供下载。")
            p(b, "此外还有 Corro the Unsafe Rusturchin（不安全的 Rust 海胆）作为补充吉祥物，以及各种周边商品，包括 Ferris 贴纸、T恤和刺绣补丁等。")
            p(b, "网站还收录了粉丝艺术作品、3D 模型以及其他与螃蟹相关的有趣内容。")
            h2(b, "版权信息")
            p(b, "Ferris the Rustacean 由 Karen Rustad Tolva 创作，她已在美国法律允许的最大范围内放弃了所有版权和相关权利。该作品以公共领域形式发布。")
            a(b, attrs("href", "https://rustacean.net/"), "访问 Rustacean.net")
        }
    )
}
