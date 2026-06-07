package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPnpmmonorepoMoPost(): Post {
    return Post(
        "pnpmmonorepo-mo",
        "怎么基于pnpm搭建你自己的monorepo工具库并发包",
        "2024-08-21",
        "基于 pnpm 搭建 monorepo 工具库并发包的完整流程，包括初始化、发包配置和包之间的相互引用。",
        { b =>
            h2(b, "初始化")
            p(b, "全局安装 pnpm，然后创建新文件夹并初始化 package.json：")
            raw(b, "<pre><code>npm install pnpm -g\npnpm init</code></pre>")
            p(b, "在根目录下添加 pnpm-workspace.yaml 文件，告诉 pnpm 哪些目录是工作区：")
            raw(b, "<pre><code>packages:\n  - 'packages/**'</code></pre>")
            p(b, "新建 package 文件夹，在里面初始化 package.json：")
            raw(b, "<pre><code>pnpm init</code></pre>")
            h2(b, "发包")
            p(b, "monorepo 的发包通常按照 @xx/xx 的格式发包。在 name 字段加上 scope 后直接 npm publish 会报错 Scope not found。")
            p(b, "Scope 有两种：个人就是你 npm 的用户名，可以通过 npm whoami 查看；团体不同于个人账户，可以自定义名字，推荐用这个，新建一个 Organizations 就可以用 @团体名/包名 来发包。")
            p(b, "加上 scope 的包默认是私有的，发包时需要加 --access public：")
            raw(b, "<pre><code>npm publish --access public</code></pre>")
            h2(b, "monorepo 包相互引用")
            p(b, "在一般的 npm 中，npm link 只能在主机软连接，git push 后其他开发者需要重新 link；npm install 则需要先把包 publish 之后才能 install。")
            p(b, "在 monorepo 的项目中，可以在 packageA 文件夹中执行：")
            raw(b, "<pre><code>pnpm add ../packageb</code></pre>")
            p(b, "package.json 中会多出 dependencies 字段，引用 link 方式指向本地包。pnpm add 会先检查 workspace 有没有相同的包，非常方便。")
            a(b, attrs("href", "https://juejin.cn/post/7296703930313375783"), "阅读原文")
        }
    )
}
