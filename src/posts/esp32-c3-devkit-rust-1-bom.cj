package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEsp32C3DevkitRust1BomPost(): Post {
    return Post(
        "esp32-c3-devkit-rust-1-bom",
        "ESP32-C3-DevKit-RUST-1 BOM",
        "2024-10-18",
        "官方文档/工具：ESP32-C3-DevKit-RUST-1 BOM",
        { b =>
            h2(b, "ESP32-C3-DevKit-RUST-1 BOM")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://docs.esp-rs.org/esp-rust-board/"), "访问原始链接")
        }
    )
}
