package bemlyCJWeb.views

import html_builder.*
import std.collection.*
import bemlyCJWeb.model.*

public func renderHome(posts: ArrayList<Post>): String {
    let body = html { b =>
        div(b, attrs("class", "container")) {
            header(b) {
                div(b, attrs("class", "logo")) {
                    raw(b, "&#x1FAD0;")
                }
                h1(b, "一只蓝莓小果冻")
                p(b, "Bemly_ — Tech & Life")
            }
            div(b, attrs("class", "posts")) {
                for (post in posts) {
                    a(b, attrs("class", "post-card", "href", "/post/" + post.slug)) {
                        h2(b, post.title)
                        div(b, attrs("class", "date")) {
                            text(b, post.date)
                        }
                        div(b, attrs("class", "excerpt")) {
                            text(b, post.excerpt)
                        }
                    }
                }
            }
        }
    }
    return renderLayout("首页", body)
}
