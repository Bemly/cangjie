package bemlyCJWeb

import html_builder.*

public class Post {
    public var slug: String
    public var title: String
    public var date: String
    public var excerpt: String
    private var _contentFn: (HtmlBuilder) -> Unit

    public init(slug: String, title: String, date: String, excerpt: String, contentFn: (HtmlBuilder) -> Unit) {
        this.slug = slug
        this.title = title
        this.date = date
        this.excerpt = excerpt
        this._contentFn = contentFn
    }

    public func renderContent(): String {
        return html { b => _contentFn(b) }
    }
}
