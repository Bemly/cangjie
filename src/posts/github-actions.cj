package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubActionsPost(): Post {
    return Post(
        "github-actions",
        "GitHub Actions 入门教程 - 阮一峰的网络日志",
        "2024-02-02",
        "阮一峰详细介绍 GitHub Actions 的基本概念、workflow 文件配置，并演示如何自动部署 React 应用到 GitHub Pages。",
        { b =>
            h2(b, "GitHub Actions 入门教程")
            p(b, "GitHub Actions 是 GitHub 的持续集成服务，于 2018 年 10 月推出。作者阮一峰认为它非常强大且有创意，比 Travis CI 玩法更多。本文演示如何使用 GitHub Actions 自动发布一个 React 应用到 GitHub Pages。")
            h2(b, "什么是 GitHub Actions？")
            p(b, "持续集成由很多操作组成，比如抓取代码、运行测试、登录远程服务器、发布到第三方服务等。GitHub 把这些操作称为 actions。很多操作在不同项目中是类似的，完全可以共享。GitHub 允许开发者把每个操作写成独立的脚本文件，存放到代码仓库，其他开发者可以直接引用。")
            p(b, "GitHub 做了一个官方市场，可以搜索到他人提交的 actions。每个 action 就是一个独立脚本，使用 userName/repoName 的语法引用，比如 actions/setup-node 表示安装 Node.js 的 action。用户可以引用某个具体版本的 action，使用 Git 的 commit、标签或分支指针。")
            h2(b, "基本概念")
            p(b, "workflow（工作流程）是持续集成一次运行的过程；job（任务）是一个 workflow 中的一项任务；step（步骤）是每个 job 中的一个个步骤；action（动作）是每个 step 可以执行的命令。workflow 文件采用 YAML 格式，存放在代码仓库的 .github/workflows 目录中。")
            p(b, "workflow 文件的关键字段包括：name（名称）、on（触发条件，如 push 事件）、jobs（任务定义）、runs-on（虚拟机环境，如 ubuntu-latest）、steps（运行步骤）。GitHub 只要发现 .github/workflows 目录里有 .yml 文件就会自动运行。")
            h2(b, "实例：React 项目发布到 GitHub Pages")
            p(b, "教程演示了完整流程：使用 create-react-app 生成 React 应用，在 package.json 中添加 homepage 字段，创建 .github/workflows/ci.yml 文件，使用 JamesIves/github-pages-deploy-action 来构建和部署。workflow 在 master 分支 push 时触发，使用 GitHub 密钥进行身份验证。")
            p(b, "保存文件并推送到 GitHub 后，GitHub 会自动运行 workflow。每次修改后推送源码，GitHub Actions 都会自动将构建产物发布到网页上。")
            a(b, attrs("href", "https://www.ruanyifeng.com/blog/2019/09/getting-started-with-github-actions.html"), "阅读原文")
        }
    )
}
