package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustoptionPost(): Post {
    return Post(
        "rustoption",
        "Rust的Option细节",
        "2024-08-08",
        "Rust中Option类型的各种方法详解：unwrap系列、map系列、ok系列和逻辑运算系列",
        { b =>
            h2(b, "Rust的Option细节")
            p(b, "Rust中Option使用细节的全面总结，涵盖unwrap系列、map系列、ok系列和逻辑运算系列的方法。")
            h2(b, "unwrap系列")
            p(b, "expect()：取出值或panic，如果Option是Some就把值move出来，否则以给定的msg来panic。unwrap()：与expect类似，只是panic产生的msg不同。unwrap_or()：取出值或返回默认值，default会被eagerly evaluated。unwrap_or_else()：取出值或返回f()，f()会被lazily evaluated，仅当Option是None时才被求值。")
            h2(b, "map系列")
            p(b, "map()：通过函数f(T)->U把Option<T>转化成Option<U>，若为None则返回None而不panic。map_or()：把Option<T>转化成U(而不是Option<U>)，若为None则返回default，default会被eagerly evaluated。map_or_else()：类似map_or，但default通过闭包lazily evaluated。")
            h2(b, "ok系列")
            p(b, "ok_or()：把Option<T>转化成Result<T, E>，error部分使用默认值，eagerly evaluated。ok_or_else()：类似ok_or，但error部分通过闭包lazily evaluated。")
            h2(b, "逻辑运算系列")
            p(b, "and()：本Option和参数optb有一个为None结果就为None。and_then()：类似and，但使用闭包lazily evaluated。or()：本Option和参数optb有一个为Some结果就为Some。or_else()：类似or，但使用闭包lazily evaluated。xor()：有且只有一个为Some结果才为Some。")
            h2(b, "unwrap_or与unwrap_or_else的区别")
            p(b, "unwrap_or的default会被eagerly evaluated，无论Option是Some还是None都会先求值。而unwrap_or_else的闭包会被lazily evaluated，仅当Option是None时才求值。在default值的创建代价较高时，应优先使用unwrap_or_else。")
            h2(b, "move语义")
            p(b, "Option的所有这些方法都会move出Option中的值。调用后原Option不能再使用，否则会触发编译错误"value borrowed here after move"。这是Rust所有权系统的重要体现。")
            a(b, attrs("href", "https://www.yuanguohuo.com/2020/02/20/rust-option/"), "阅读原文")
        }
    )
}
