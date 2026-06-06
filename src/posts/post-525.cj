package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost525Post(): Post {
    return Post(
        "post-525",
        "开源鸿蒙方舟编译器前端工具“方舟 JS 运行时”正式开源",
        "2024-01-19",
        "网站主页：开源鸿蒙方舟编译器前端工具“方舟 JS 运行时”正式开源",
        { b =>
            h2(b, "开源鸿蒙方舟编译器前端工具“方舟 JS 运行时”正式开源")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.bway.cn/kai-yuan-hong-meng-fang-zhou-bian-yi-qi-qian-duan-gong-ju-fang-zhou-JSyun-xing-shi-zheng-shi-kai-yuan-211.html"), "访问原始链接")
        }
    )
}
