package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubFlightlessmangomangohudAVulkanAndPost(): Post {
    return Post(
        "github-flightlessmangomangohud-a-vulkan-and",
        "GitHub - flightlessmango/MangoHud: A Vulkan and...",
        "2024-06-06",
        "GitHub 仓库：GitHub - flightlessmango/MangoHud: A Vul",
        { b =>
            h2(b, "GitHub - flightlessmango/MangoHud: A Vulkan and...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/flightlessmango/MangoHud"), "访问原始链接")
        }
    )
}
