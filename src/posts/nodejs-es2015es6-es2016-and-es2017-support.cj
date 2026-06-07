package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodejsEs2015es6Es2016AndEs2017SupportPost(): Post {
    return Post(
        "nodejs-es2015es6-es2016-and-es2017-support",
        "Node.js ES2015/ES6, ES2016 and ES2017 support",
        "2024-08-17",
        "node.green 是一个基于 kangax 兼容性表格的 Node.js ES2015/ES6、ES2016 和 ES2017 特性支持追踪网站。",
        { b =>
            h2(b, "什么是 node.green")
            p(b, "node.green 是由 William Kapke 创建的网站，它将 kangax 的 JavaScript 兼容性表格专门应用于 Node.js 环境。该网站追踪各个 Node.js 版本对 ES2015/ES6、ES2016 和 ES2017 新特性的支持情况，帮助开发者了解特定 Node.js 版本支持哪些 JavaScript 新语法和 API。")
            h2(b, "Node.js ES2015 支持情况")
            p(b, "从兼容性表格来看，Node.js 对 ES2015 的支持已经非常完善。Node.js 8.6.0 及以上版本的 ES2015 支持率已达 99%，Node.js 26.0.0 Nightly 版本同样达到 99% 完成度。较早的版本如 Node.js 6.4.0 支持率约为 91%，Node.js 5.12.0 为 46%，Node.js 4.9.1 为 43%。")
            h2(b, "语法特性支持")
            p(b, "默认参数（Default Function Parameters）：从 Node.js 6.0.0 开始就完整支持，包括基本功能、显式 undefined 延迟到默认值、默认值引用先前参数、arguments 对象交互、暂时性死区、独立作用域和 new Function() 支持。")
            p(b, "剩余参数（Rest Parameters）：从 Node.js 6.0.0 开始支持基本功能、函数 length 属性和 arguments 对象交互。解构赋值（Destructuring）、箭头函数（Arrow Functions）、模板字符串（Template Literals）等核心语法特性在 Node.js 6.0.0 及以上版本均已完整支持。")
            h2(b, "优化与尾调用")
            p(b, "尾调用优化（Tail Call Optimisation）在所有 Node.js 版本中均显示为 Error 状态，包括直接递归和相互递归场景。这意味着 V8 引擎至今尚未实现 ES2015 规范中的尾调用优化特性，这在深度递归场景下可能导致栈溢出。")
            h2(b, "ES2016 和 ES2017 特性")
            p(b, "ES2016 的 Array.prototype.includes 和指数运算符在 Node.js 8.0.0 及以上版本均完整支持。ES2017 的 async/await、Object.values/Object.entries、String.prototype.padStart/padEnd 等特性在 Node.js 8.0.0 及以上版本均完整支持。")
            h2(b, "实用价值")
            p(b, "node.green 对于需要确定项目最低 Node.js 版本要求的开发者非常有用。通过查看兼容性表格，开发者可以快速判断目标 Node.js 版本是否支持所需的 JavaScript 新特性，从而做出合理的版本选择决策。该网站持续更新，跟踪最新的 Node.js Nightly 版本支持情况。")
            a(b, attrs("href", "https://node.green/"), "阅读原文")
        }
    )
}
