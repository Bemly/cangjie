package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUnableToRunYumUpdateOnCentos7StackOvPost(): Post {
    return Post(
        "unable-to-run-yum-update-on-centos-7-stack-ov",
        "Unable to run yum update on centos 7 - Stack Ov...",
        "2024-09-20",
        "网站主页：Unable to run yum update on centos 7 - S",
        { b =>
            h2(b, "Unable to run yum update on centos 7 - Stack Ov...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/75615193/unable-to-run-yum-update-on-centos-7"), "访问原始链接")
        }
    )
}
