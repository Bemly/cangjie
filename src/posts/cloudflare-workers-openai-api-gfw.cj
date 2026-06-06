package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCloudflareWorkersOpenaiApiGfwPost(): Post {
    return Post(
        "cloudflare-workers-openai-api-gfw",
        "使用 Cloudflare Workers 让 OpenAI API 绕过 GFW 且避免被封...",
        "2024-09-11",
        "GitHub 文件：使用 Cloudflare Workers 让 OpenAI API 绕过 GF",
        { b =>
            h2(b, "使用 Cloudflare Workers 让 OpenAI API 绕过 GFW 且避免被封...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/noobnooc/noobnooc/discussions/9"), "访问原始链接")
        }
    )
}
