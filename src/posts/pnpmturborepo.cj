package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPnpmturborepoPost(): Post {
    return Post(
        "pnpmturborepo",
        "如何基于 PNPM+Turborepo 为公司搭建一个通用型前端脚手架",
        "2024-08-21",
        "面对创建不同项目时遇到的初始化配置繁琐和前期配置不便，以及不同项目间相同逻辑的重复问题，我们设计并实现了一款前端脚手架工具。",
        { b =>
            h2(b, "如何基于 PNPM+Turborepo 为公司搭建一个通用型前端脚手架")
            p(b, "面对创建不同项目时遇到的初始化配置繁琐和前期配置不便，以及不同项目间相同逻辑的重复问题，为了解决这些问题，我们设计并实现了一款前端脚手架工具。目的是通过自动化处理常见的初始化任务，极大简化开发前期的配置工作，同时通过用户的选择支持生成包括 React、Vue 等多种流行前端技术栈的模板，确保了该脚手架的广泛适用性与高度的灵活性。")
            h2(b, "项目目录分层")
            p(b, "整个项目使用的是 Turborepo+PNPM 实现的 Monorepo 架构。在目录中分别管理着三个目录：packages、app、example。其中 packages 为整个脚手架的核心包，app 为创建项目时所需要的模板包（这些模板包都会上传到 NPM），example 存放 demo。")
            h2(b, "Create-Neat 整体架构")
            p(b, "聚焦到 packages 目录下，这里就是所有的实现逻辑。其中三个关键文件：core（脚手架核心，通过该子包可以在终端中快速创建项目）、react-webpack-config（配置了一些核心的 webpack 配置，通过 npm 包的方式提供用户直接使用）、utils（存放两个依赖包之间相同的代码）。")
            h2(b, "core 核心模块")
            p(b, "core 目录的 src/index.ts 是整个项目的入口文件。当在终端中执行 npx create-neat app 就会进入该文件并执行。它会根据用户的选择来处理不同的模板，核心逻辑是 createApp 函数。在这里使用 axios 执行网络请求获取模板包的 tgz 文件，每个包对应的版本都有一个 tgz 后缀的文件。")
            p(b, "通过 axios 获取到 tgz 文件之后，将其解压到特定的目录，然后根据用户不同的选择，将不同的模板合并到一起，这样就可以创建出一个用户所需要的项目。")
            h2(b, "react-webpack-config 模块")
            p(b, "这个包集成了一些内置的 webpack 配置和 babel 配置，区分了开发环境和生产环境。它会判断当前项目下是否存在 webpack.config.js 的文件，这个文件提供用户自定义 webpack 配置。当执行 pnpm start 启动项目时，它会通过 bin 命令来执行 react-webpack-config 中 bin 目录下的 index.js 文件。")
            p(b, "该文件根据传入的第一个参数来判断执行 start、build 或 analyzer 对应的脚本。以 start 为例，它接收所有的开发环境的 webpack 配置，读取用户是否编写了 .env 文件并自定义了端口，然后将整个 webpack 配置传入 webpack-dev-server 来运行。")
            h2(b, "如何启动项目")
            p(b, "首先 git clone https://github.com/xun082/create-neat.git 拉取项目到本地，然后在根目录下使用 pnpm install 安装依赖（必须使用 pnpm），之后执行 pnpm dev 启动项目。因为项目使用 Turborepo 来管理，所以它会启动所有子包中带有 dev 字段的包。")
            p(b, "要在本地中调试该脚手架，需要在 core 目录下打开终端执行 npm link 将项目链接到全局，这样就可以直接在本地中调试脚手架了。")
            h2(b, "总结")
            p(b, "通过 Create-Neat 实现根据用户的选择来创建不同的模板，在创建的模板当中添加 react-webpack-config 这样的依赖包，并且在 scripts 中添加相对应的启动命令，react-webpack-config 会根据传入的参数不同来判断是生产环境还是开发环境来处理不同的配置，这就是整个脚手架创建的核心流程。")
            a(b, attrs("href", "https://juejin.cn/post/7346865556328661007"), "阅读原文")
        }
    )
}
