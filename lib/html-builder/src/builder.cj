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

// 全局 builder 实例
private var _currentBuilder: ?HtmlBuilder = None

public func getCurrentBuilder(): HtmlBuilder {
    if (let Some(b) <- _currentBuilder) {
        return b
    }
    let b = HtmlBuilder()
    _currentBuilder = b
    return b
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

public func html(children: () -> Unit): String {
    let builder = HtmlBuilder()
    _currentBuilder = builder
    builder.openTag("html", HashMap<String, String>())
    children()
    builder.closeTag("html")
    _currentBuilder = None
    return builder.build()
}

public func head(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("head", HashMap<String, String>())
    children()
    builder.closeTag("head")
}

public func body(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("body", HashMap<String, String>())
    children()
    builder.closeTag("body")
}

public func div(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("div", HashMap<String, String>())
    children()
    builder.closeTag("div")
}

public func div(attrs: HashMap<String, String>, children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("div", attrs)
    children()
    builder.closeTag("div")
}

public func span(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("span", HashMap<String, String>())
    children()
    builder.closeTag("span")
}

public func span(attrs: HashMap<String, String>, children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("span", attrs)
    children()
    builder.closeTag("span")
}

public func header(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("header", HashMap<String, String>())
    children()
    builder.closeTag("header")
}

public func article(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("article", HashMap<String, String>())
    children()
    builder.closeTag("article")
}

public func ul(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("ul", HashMap<String, String>())
    children()
    builder.closeTag("ul")
}

public func ul(attrs: HashMap<String, String>, children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("ul", attrs)
    children()
    builder.closeTag("ul")
}

public func table(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("table", HashMap<String, String>())
    children()
    builder.closeTag("table")
}

public func tr(children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("tr", HashMap<String, String>())
    children()
    builder.closeTag("tr")
}

// ========== 文本标签 ==========

public func title(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("title", HashMap<String, String>(), text)
}

public func h1(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("h1", HashMap<String, String>(), text)
}

public func h2(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("h2", HashMap<String, String>(), text)
}

public func h3(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("h3", HashMap<String, String>(), text)
}

public func h4(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("h4", HashMap<String, String>(), text)
}

public func p(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("p", HashMap<String, String>(), text)
}

public func p(attrs: HashMap<String, String>, text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("p", attrs, text)
}

public func li(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("li", HashMap<String, String>(), text)
}

public func td(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("td", HashMap<String, String>(), text)
}

public func th(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("th", HashMap<String, String>(), text)
}

public func code(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("code", HashMap<String, String>(), text)
}

public func pre(text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("pre", HashMap<String, String>(), text)
}

public func style(css: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("style", HashMap<String, String>(), css)
}

public func script(js: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("script", HashMap<String, String>(), js)
}

// ========== 链接/媒体 ==========

public func a(href: String, text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("a", attrs("href", href), text)
}

public func a(attrs: HashMap<String, String>, text: String): Unit {
    let builder = getCurrentBuilder()
    builder.textTag("a", attrs, text)
}

public func a(attrs: HashMap<String, String>, children: () -> Unit): Unit {
    let builder = getCurrentBuilder()
    builder.openTag("a", attrs)
    children()
    builder.closeTag("a")
}

public func img(src: String, alt: String): Unit {
    let builder = getCurrentBuilder()
    builder.selfClosingTag("img", attrs("src", src, "alt", alt))
}

public func img(attrs: HashMap<String, String>): Unit {
    let builder = getCurrentBuilder()
    builder.selfClosingTag("img", attrs)
}

// ========== 自闭合标签 ==========

public func br(): Unit {
    let builder = getCurrentBuilder()
    builder.selfClosingTag("br", HashMap<String, String>())
}

public func hr(): Unit {
    let builder = getCurrentBuilder()
    builder.selfClosingTag("hr", HashMap<String, String>())
}

public func meta(attrs: HashMap<String, String>): Unit {
    let builder = getCurrentBuilder()
    builder.selfClosingTag("meta", attrs)
}

public func link(attrs: HashMap<String, String>): Unit {
    let builder = getCurrentBuilder()
    builder.selfClosingTag("link", attrs)
}

// ========== 原始 HTML ==========

public func raw(html: String): Unit {
    let builder = getCurrentBuilder()
    builder.raw(html)
}

public func text(content: String): Unit {
    let builder = getCurrentBuilder()
    builder.text(content)
}
