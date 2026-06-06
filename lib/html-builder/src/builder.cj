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

    private func writeAttrs(attrs: HashMap<String, String>): Unit {
        for (key in attrs.keys()) {
            _sb.append(" ${key}=\"${escapeAttr(attrs.get(key) ?? "")}\"")
        }
    }

    public func openTag(name: String, attrs: HashMap<String, String>): Unit {
        addIndent()
        _sb.append("<${name}")
        writeAttrs(attrs)
        _sb.append(">")
        _indent++
    }

    public func closeTag(name: String): Unit {
        _indent--
        addIndent()
        _sb.append("</${name}>")
    }

    public func selfClosingTag(name: String, attrs: HashMap<String, String>): Unit {
        addIndent()
        _sb.append("<${name}")
        writeAttrs(attrs)
        _sb.append(" />")
    }

    public func textTag(name: String, attrs: HashMap<String, String>, text: String): Unit {
        addIndent()
        _sb.append("<${name}")
        writeAttrs(attrs)
        _sb.append(">${text}</${name}>")
    }

    public func raw(html: String): Unit {
        _sb.append(html)
    }

    public func text(content: String): Unit {
        _sb.append(content)
    }

    public func build(): String {
        return _sb.toString()
    }
}

// 每次调用 html{} 都创建新实例，避免并发问题
public func html(children: (HtmlBuilder) -> Unit): String {
    let builder = HtmlBuilder()
    children(builder)
    return builder.build()
}

public func attrs(key: String, value: String): HashMap<String, String> {
    let map = HashMap<String, String>()
    map.add(key, value)
    return map
}

public func attrs(k1: String, v1: String, k2: String, v2: String): HashMap<String, String> {
    let map = HashMap<String, String>()
    map.add(k1, v1)
    map.add(k2, v2)
    return map
}

public func attrs(k1: String, v1: String, k2: String, v2: String, k3: String, v3: String): HashMap<String, String> {
    let map = HashMap<String, String>()
    map.add(k1, v1)
    map.add(k2, v2)
    map.add(k3, v3)
    return map
}

// ========== 容器标签 ==========

public func head(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("head", HashMap<String, String>())
    children()
    b.closeTag("head")
}

public func body(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("body", HashMap<String, String>())
    children()
    b.closeTag("body")
}

public func div(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("div", HashMap<String, String>())
    children()
    b.closeTag("div")
}

public func div(b: HtmlBuilder, attrs: HashMap<String, String>, children: () -> Unit): Unit {
    b.openTag("div", attrs)
    children()
    b.closeTag("div")
}

public func span(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("span", HashMap<String, String>())
    children()
    b.closeTag("span")
}

public func span(b: HtmlBuilder, attrs: HashMap<String, String>, children: () -> Unit): Unit {
    b.openTag("span", attrs)
    children()
    b.closeTag("span")
}

public func header(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("header", HashMap<String, String>())
    children()
    b.closeTag("header")
}

public func footer(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("footer", HashMap<String, String>())
    children()
    b.closeTag("footer")
}

public func article(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("article", HashMap<String, String>())
    children()
    b.closeTag("article")
}

public func ul(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("ul", HashMap<String, String>())
    children()
    b.closeTag("ul")
}

public func ul(b: HtmlBuilder, attrs: HashMap<String, String>, children: () -> Unit): Unit {
    b.openTag("ul", attrs)
    children()
    b.closeTag("ul")
}

public func table(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("table", HashMap<String, String>())
    children()
    b.closeTag("table")
}

public func tr(b: HtmlBuilder, children: () -> Unit): Unit {
    b.openTag("tr", HashMap<String, String>())
    children()
    b.closeTag("tr")
}

// ========== 文本标签 ==========

public func title(b: HtmlBuilder, text: String): Unit {
    b.textTag("title", HashMap<String, String>(), text)
}

public func h1(b: HtmlBuilder, text: String): Unit {
    b.textTag("h1", HashMap<String, String>(), text)
}

public func h1(b: HtmlBuilder, attrs: HashMap<String, String>, text: String): Unit {
    b.textTag("h1", attrs, text)
}

public func h2(b: HtmlBuilder, text: String): Unit {
    b.textTag("h2", HashMap<String, String>(), text)
}

public func h2(b: HtmlBuilder, attrs: HashMap<String, String>, text: String): Unit {
    b.textTag("h2", attrs, text)
}

public func h3(b: HtmlBuilder, text: String): Unit {
    b.textTag("h3", HashMap<String, String>(), text)
}

public func h3(b: HtmlBuilder, attrs: HashMap<String, String>, text: String): Unit {
    b.textTag("h3", attrs, text)
}

public func h4(b: HtmlBuilder, text: String): Unit {
    b.textTag("h4", HashMap<String, String>(), text)
}

public func h4(b: HtmlBuilder, attrs: HashMap<String, String>, text: String): Unit {
    b.textTag("h4", attrs, text)
}

public func p(b: HtmlBuilder, text: String): Unit {
    b.textTag("p", HashMap<String, String>(), text)
}

public func p(b: HtmlBuilder, attrs: HashMap<String, String>, text: String): Unit {
    b.textTag("p", attrs, text)
}

public func li(b: HtmlBuilder, text: String): Unit {
    b.textTag("li", HashMap<String, String>(), text)
}

public func td(b: HtmlBuilder, text: String): Unit {
    b.textTag("td", HashMap<String, String>(), text)
}

public func th(b: HtmlBuilder, text: String): Unit {
    b.textTag("th", HashMap<String, String>(), text)
}

public func code(b: HtmlBuilder, text: String): Unit {
    b.textTag("code", HashMap<String, String>(), text)
}

public func pre(b: HtmlBuilder, text: String): Unit {
    b.textTag("pre", HashMap<String, String>(), text)
}

public func style(b: HtmlBuilder, css: String): Unit {
    b.textTag("style", HashMap<String, String>(), css)
}

public func script(b: HtmlBuilder, js: String): Unit {
    b.textTag("script", HashMap<String, String>(), js)
}

// ========== 链接/媒体 ==========

public func a(b: HtmlBuilder, href: String, text: String): Unit {
    b.textTag("a", attrs("href", href), text)
}

public func a(b: HtmlBuilder, attrs: HashMap<String, String>, text: String): Unit {
    b.textTag("a", attrs, text)
}

public func a(b: HtmlBuilder, attrs: HashMap<String, String>, children: () -> Unit): Unit {
    b.openTag("a", attrs)
    children()
    b.closeTag("a")
}

public func img(b: HtmlBuilder, src: String, alt: String): Unit {
    b.selfClosingTag("img", attrs("src", src, "alt", alt))
}

public func img(b: HtmlBuilder, attrs: HashMap<String, String>): Unit {
    b.selfClosingTag("img", attrs)
}

// ========== 自闭合标签 ==========

public func br(b: HtmlBuilder): Unit {
    b.selfClosingTag("br", HashMap<String, String>())
}

public func hr(b: HtmlBuilder): Unit {
    b.selfClosingTag("hr", HashMap<String, String>())
}

public func meta(b: HtmlBuilder, attrs: HashMap<String, String>): Unit {
    b.selfClosingTag("meta", attrs)
}

public func link(b: HtmlBuilder, attrs: HashMap<String, String>): Unit {
    b.selfClosingTag("link", attrs)
}

// ========== 原始 HTML ==========

public func raw(b: HtmlBuilder, html: String): Unit {
    b.raw(html)
}

public func text(b: HtmlBuilder, content: String): Unit {
    b.text(content)
}
