package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCreateNewPageBemlywebIssueinkWikiPost(): Post {
    return Post(
        "create-new-page-bemlyweb-issueink-wiki",
        "Create new page · Bemly/Web-IssueInk Wiki",
        "2024-02-04",
        "GitHub Wiki：Create new page · Bemly/Web-IssueInk Wik",
        { b =>
            h2(b, "Create new page · Bemly/Web-IssueInk Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/Bemly/Web-IssueInk/wiki/_new"), "访问原始链接")
        }
    )
}
