package html_builder

import std.collection.*

public class HtmlBuilder {
    private var _sb: StringBuilder
    private var _indent: Int64

    public init() {
        _sb = StringBuilder()
        _indent = 0
    }

    public func toString(): String {
        return _sb.toString()
    }

    private func addIndent(): Unit {
        for (_ in 0.._indent) {
            _sb.append("  ")
        }
    }

    private func escapeAttr(value: String): String {
        return value.replace("\"", "&quot;").replace("<", "&lt;").replace(">", "&gt;")
    }

    public func tag(name: String, attrs: Map<String, String>, children: () -> Unit): Unit {
        addIndent()
        _sb.append("<${name}")
        for (key in attrs.keys()) {
            _sb.append(" ${key}=\"${escapeAttr(attrs.get(key) ?? "")}\"")
        }
        _sb.append(">")
        _indent++
        children()
        _indent--
        addIndent()
        _sb.append("</${name}>")
    }

    public func tag(name: String, text: String): Unit {
        addIndent()
        _sb.append("<${name}>${text}</${name}>")
    }

    public func selfClosing(name: String, attrs: Map<String, String>): Unit {
        addIndent()
        _sb.append("<${name}")
        for (key in attrs.keys()) {
            _sb.append(" ${key}=\"${escapeAttr(attrs.get(key) ?? "")}\"")
        }
        _sb.append(" />")
    }

    public func raw(html: String): Unit {
        _sb.append(html)
    }

    public func text(content: String): Unit {
        _sb.append(content)
    }
}

public func html(attrs: Map<String, String>, children: () -> Unit): String {
    let builder = HtmlBuilder()
    builder.tag("html", attrs, children)
    return builder.toString()
}

public func html(children: () -> Unit): String {
    return html(HashMap<String, String>(), children)
}

public func head(children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("head", HashMap<String, String>(), children)
}

public func body(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("body", attrs, children)
}

public func body(children: () -> Unit): Unit {
    body(HashMap<String, String>(), children)
}

public func div(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("div", attrs, children)
}

public func div(children: () -> Unit): Unit {
    div(HashMap<String, String>(), children)
}

public func span(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("span", attrs, children)
}

public func span(children: () -> Unit): Unit {
    span(HashMap<String, String>(), children)
}

public func p(attrs: Map<String, String>, text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("p", attrs, { => builder.text(text) })
}

public func p(text: String): Unit {
    p(HashMap<String, String>(), text)
}

public func h1(text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("h1", text)
}

public func h2(text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("h2", text)
}

public func h3(text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("h3", text)
}

public func h4(text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("h4", text)
}

public func title(text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("title", text)
}

public func a(attrs: Map<String, String>, text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("a", attrs, { => builder.text(text) })
}

public func a(href: String, text: String): Unit {
    let attrs = HashMap<String, String>()
    attrs.add("href", href)
    a(attrs, text)
}

public func img(attrs: Map<String, String>): Unit {
    let builder = HtmlBuilder()
    builder.selfClosing("img", attrs)
}

public func img(src: String, alt: String): Unit {
    let attrs = HashMap<String, String>()
    attrs.add("src", src)
    attrs.add("alt", alt)
    img(attrs)
}

public func ul(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("ul", attrs, children)
}

public func ul(children: () -> Unit): Unit {
    ul(HashMap<String, String>(), children)
}

public func li(attrs: Map<String, String>, text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("li", attrs, { => builder.text(text) })
}

public func li(text: String): Unit {
    li(HashMap<String, String>(), text)
}

public func br(): Unit {
    let builder = HtmlBuilder()
    builder.selfClosing("br", HashMap<String, String>())
}

public func hr(): Unit {
    let builder = HtmlBuilder()
    builder.selfClosing("hr", HashMap<String, String>())
}

public func code(text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("code", text)
}

public func pre(attrs: Map<String, String>, text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("pre", attrs, { => builder.text(text) })
}

public func pre(text: String): Unit {
    pre(HashMap<String, String>(), text)
}

public func style(css: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("style", css)
}

public func script(js: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("script", js)
}

public func meta(attrs: Map<String, String>): Unit {
    let builder = HtmlBuilder()
    builder.selfClosing("meta", attrs)
}

public func link(attrs: Map<String, String>): Unit {
    let builder = HtmlBuilder()
    builder.selfClosing("link", attrs)
}

public func attrs(key: String, value: String): HashMap<String, String> {
    let map = HashMap<String, String>()
    map.add(key, value)
    return map
}

public func HashMap<String, String>.put(key: String, value: String): HashMap<String, String> {
    this.add(key, value)
    return this
}

public func header(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("header", attrs, children)
}

public func header(children: () -> Unit): Unit {
    header(HashMap<String, String>(), children)
}

public func article(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("article", attrs, children)
}

public func article(children: () -> Unit): Unit {
    article(HashMap<String, String>(), children)
}

public func table(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("table", attrs, children)
}

public func table(children: () -> Unit): Unit {
    table(HashMap<String, String>(), children)
}

public func tr(attrs: Map<String, String>, children: () -> Unit): Unit {
    let builder = HtmlBuilder()
    builder.tag("tr", attrs, children)
}

public func tr(children: () -> Unit): Unit {
    tr(HashMap<String, String>(), children)
}

public func td(attrs: Map<String, String>, text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("td", attrs, { => builder.text(text) })
}

public func td(text: String): Unit {
    td(HashMap<String, String>(), text)
}

public func th(attrs: Map<String, String>, text: String): Unit {
    let builder = HtmlBuilder()
    builder.tag("th", attrs, { => builder.text(text) })
}

public func th(text: String): Unit {
    th(HashMap<String, String>(), text)
}
