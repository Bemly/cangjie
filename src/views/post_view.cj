package bemlyCJWeb.views

import html_builder.*
import bemlyCJWeb.model.*

public func renderPost(post: Post): String {
    let body = html { b =>
        article(b) {
            a(b, attrs("class", "back-link", "href", "/"), "← 返回首页")
            h1(b, post.title)
            div(b, attrs("class", "date")) {
                text(b, post.date)
            }
            raw(b, post.renderContent())
            p(b, attrs("style", "color:#666;font-size:.85rem;margin-top:32px"), "转载请注明出处，好人一生平胸")
        }
    }
    return renderLayout(post.title, body)
}

public func render404(): String {
    return renderLayout("未找到", html { b =>
        article(b) {
            a(b, attrs("class", "back-link", "href", "/"), "← 返回首页")
            h1(b, "404")
            p(b, "文章不存在")
        }
    })
}
