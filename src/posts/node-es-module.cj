package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodeEsModulePost(): Post {
    return Post(
        "node-es-module",
        "如何让 Node 环境支持 ES Module",
        "2024-08-21",
        "了解 CommonJS 与 ES Module 的区别，以及通过 webpack、babel 和 Node 原生方式让 Node 环境支持 ES Module 的方法。",
        { b =>
            h2(b, "了解模块化")
            p(b, "CommonJS 使用 require 加载模块，通过 module.exports 或 exports.xxx 导出。ES Module 使用 import 加载模块，通过 export default 或 export xxx 导出。")
            h2(b, "痛点分析")
            p(b, "使用 CommonJS 导出一个模块 utils，在主文件中通过 ES Module 的方式 import 引入模块，运行程序会报错 Cannot use import statement outside a module，即 Node 不让直接使用 import 语法。")
            h2(b, "利用 webpack 支持 ES Module")
            p(b, "安装 webpack 和 webpack-cli 后，将主文件改为使用 require 去调用 webpack 构建后的文件。core.js 使用 ES Module 引入 utils.js，配置好 webpack.config.js 的 entry 和 output，修改 package.json 的 scripts 字段添加 build 和 dev 命令，执行 npm run build 构建后即可正常运行。")
            p(b, "可以启动监听状态（npm run dev），当文件发生变化时自动执行构建过程。")
            h2(b, "通过 webpack target 属性支持 Node 内置库")
            p(b, "当调用 Node 的内置库（如 path、fs）时，webpack 构建会报错，因为 webpack 默认使用 web 环境进行构建，web 环境不存在 Node 的内置库。需要修改 target 属性为 node 来解决。")
            h2(b, "利用 babel 兼容低版本 Node")
            p(b, "安装 babel-loader、@babel/core、@babel/preset-env、@babel/plugin-transform-runtime 和 @babel/runtime-corejs3 依赖，在 webpack 配置中添加 babel-loader 的 module rules，配置 presets 和 plugins 以实现对低版本 Node 的兼容。")
            h2(b, "Node 原生支持 ES Module")
            p(b, "将文件名后缀改为 .mjs，一旦使用 mjs，所有内容都需要使用 ES Module，不可混用，否则会报错。通过 node --experimental-modules bin/index.mjs 执行程序（Node 14 版本之后不需要加 --experimental-modules 指令）。")
            p(b, "如果不希望将后缀名改成 .mjs，可以在项目的 package.json 文件中指定 type 字段为 module，这样该目录里面的 JS 脚本就被解释为 ES6 模块。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2190094"), "阅读原文")
        }
    )
}
