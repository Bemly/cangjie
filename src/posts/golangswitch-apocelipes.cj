package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGolangswitchApocelipesPost(): Post {
    return Post(
        "golangswitch-apocelipes",
        "golang中一种不常见的switch语句写法",
        "2023-05-04",
        "Go 语言中 switch 后面不跟表达式的写法，等价于 switch true，用 case 中的布尔表达式来选择分支。",
        { b =>
            p(b, "最近翻开源代码的时候看到了一种很有意思的 switch 用法。注意这里讨论的不是 typed switch，也就是 case 语句后面是类型的那种。")
            raw(b, "<pre><code>func (s *systemd) Status() (Status, error) {\n    exitCode, out, err := s.runWithOutput(\"systemctl\", \"is-active\", s.unitName())\n    switch {\n    case strings.HasPrefix(out, \"active\"):\n        return StatusRunning, nil\n    case strings.HasPrefix(out, \"inactive\"):\n        // inactive can also mean its not installed\n        return StatusStopped, nil\n    case strings.HasPrefix(out, \"activating\"):\n        return StatusRunning, nil\n    case strings.HasPrefix(out, \"failed\"):\n        return StatusUnknown, errors.New(\"service in failed state\")\n    default:\n        return StatusUnknown, ErrNotInstalled\n    }\n}</code></pre>")
            p(b, "有意思的在于这个 switch：首先它后面没有任何表达式；其次在每个 case 后面都是个函数调用表达式，返回值都是 bool 类型的。虽然看起来很怪异，但这段代码肯定没有语法问题，可以编译通过。")
            p(b, "直接公布答案：如果 switch 后面没有任何表达式，那么它等价于 switch true。case 表达式按从上到下从左到右的顺序求值，如果 case 后面的表达式求出来的值和 switch 后面的表达式的值一样，那么就进入这个分支。")
            p(b, "那么上面那一串代码就好理解了：首先是 switch true，期待有个 case 能求出 true 这个值；从上到下执行 strings.HasPrefix，如果是 false 就往下到下一个 case，如果是 true 就进入这个 case 的分支。")
            p(b, "它等价于 if-else 链：if strings.HasPrefix(out, \"active\") { return StatusRunning } else if ...。从可读性上来说两者很难说谁更优秀，两者同样需要注意把常见的情况放在最前面来减少不必要的匹配。")
            p(b, "switch-case 不能像给整数常量时那样直接进行跳转，实际执行和 if 语句是差不多的。作者对两者生成的汇编代码进行了对比，编译器的处理方式非常接近。")
            a(b, attrs("href", "https://www.cnblogs.com/apocelipes/p/17368617.html"), "阅读原文")
        }
    )
}
