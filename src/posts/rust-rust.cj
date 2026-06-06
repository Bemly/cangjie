package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustRustPost(): Post {
    return Post(
        "rust-rust",
        "Rust 弱引用：解决引用循环与内存泄漏",
        "2024-07-05",
        "深入解析Rust中Weak弱引用机制，解决Rc引用循环导致的内存泄漏问题",
        { b =>
            h2(b, "引用循环的问题")
            p(b, "在 Rust 中，引用循环是一种常见的编程问题，会导致资源无法被正确释放，从而造成内存泄漏。当两个或多个对象之间相互引用形成循环链时，引用计数永远不会变为零，导致内存泄漏和资源泄漏。")
            p(b, "考虑一个简单的链表结构 Node，其中每个节点包含数据和一个 Option<Rc<Node>> 类型的指针。如果 node1 引用了 node2，同时 node2 也引用了 node1，就形成了引用循环。当它们超出作用域时，引用计数不会减少，无法正确释放内存。")
            raw(b, "<blockquote>use std::rc::Rc;<br>struct Node { data: i32, next: Option&lt;Rc&lt;Node&gt;&gt; }<br>// node1 和 node2 相互引用，形成引用循环<br>node1.next = Some(Rc::clone(&amp;node2));<br>node2.next = Some(Rc::clone(&amp;node1));</blockquote>")
            h2(b, "弱引用的概念和用法")
            p(b, "为了解决引用循环问题，Rust 提供了弱引用（Weak Reference）机制。与 Rc 智能指针不同，Weak 弱引用并不增加引用计数，它允许创建一个 Rc 的弱引用，而不影响引用计数的增减。")
            p(b, "使用 Rc::downgrade 方法可以创建弱引用，将 Rc 替换为 Weak 类型。这样 node2 弱引用 node1 时，不会阻止 node1 的引用计数降为零，从而打破引用循环。")
            raw(b, "<blockquote>use std::rc::{Rc, Weak};<br>use std::cell::RefCell;<br>struct Node { data: i32, next: Option&lt;Weak&lt;RefCell&lt;Node&gt;&gt;&gt; }<br>let node2 = Rc::new(RefCell::new(Node { data: 2, next: Some(Rc::downgrade(&amp;node1)) }));</blockquote>")
            h2(b, "使用 Weak 引用的注意事项")
            p(b, "在使用 Weak 引用时，需要在访问数据之前调用 upgrade 方法，以检查所指向的对象是否已被释放。如果 upgrade 方法返回 Some，说明对象仍然存在，可以安全访问；如果返回 None，说明对象已被回收。")
            h2(b, "其他解决方案")
            p(b, "除了使用弱引用外，还可以通过改变数据结构设计来避免引用循环的发生。一些解决方案包括使用辅助类型、懒加载等。具体方案的选择取决于应用场景和数据结构的需求。")
            p(b, "引用循环是 Rust 中需要特别注意的问题。虽然 Rust 的所有权系统在编译期保证了大部分内存安全，但 Rc 引用计数场景下仍可能产生循环引用，合理使用 Weak 弱引用是解决此类问题的关键。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2338798"), "阅读原文")
        }
    )
}
