package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubActionsCicdPost(): Post {
    return Post(
        "github-actions-cicd",
        "GitHub Actions CI/CD 工作流实战 - 护发师兄 - 博客园",
        "2024-08-14",
        "介绍GitHub Actions的基本概念和workflow实战配置，包括MSVS C++工程和Maven Java项目的CI/CD构建流程。",
        { b =>
            h2(b, "什么是GitHub Actions与Workflow")
            p(b, "GitHub Actions是GitHub提供的一种持续集成（CI）和持续部署（CD）的工具，用于自动化软件开发过程中的各种任务和工作流。GitHub Action Workflow是一组定义在存储库中的自动化任务，可以根据不同的事件（如代码推送、拉取请求、问题创建等）触发执行。每个Workflow由一个或多个步骤（Steps）组成，可以按顺序或并行执行。")
            h2(b, "常见用途")
            p(b, "常见用途包括：自动测试和构建（代码推送时自动运行测试）、自动部署（代码合并到主分支时自动部署到生产环境）、发布通知、自动化文档生成、版本发布（创建标签、生成发布文件等）、代码质量检查（代码风格检查、静态分析）、容器构建（自动构建Docker镜像并推送到容器注册表）、多环境支持（根据不同分支或标签执行适合的工作流程）。")
            h2(b, "YAML配置文件")
            p(b, "GitHub Action Workflow使用YAML文件来定义，文件位于存储库中的.github/workflows目录下。这些定义可以根据项目的需求进行配置和自定义。")
            h2(b, "MSVS工程（C++）示例")
            p(b, "以MSVS C++工程为例，workflow配置包括：使用windows-latest运行环境，步骤包括检出代码（actions/checkout@v3）、设置MSBuild（microsoft/setup-msbuild@v1.1）、构建VS项目（msbuild命令）、上传ZIP构件（actions/upload-artifact@v3），并可设置压缩包过期时间（retention-days: 90）。")
            h2(b, "Maven工程（Java）示例")
            p(b, "以Maven Java项目为例，workflow配置包括：使用ubuntu-latest运行环境，步骤包括检出代码、设置Java环境（JDK 8 Corretto发行版，缓存Maven）、构建Maven项目（mvn -DskipTests package）、上传ZIP构件。")
            h2(b, "提交与运行")
            p(b, "使用GitHub Actions的方法：1）找到你的GitHub仓库；2）在项目根路径建立/.github/workflows文件夹，放置yaml构建脚本；3）提交后等待GitHub Actions自动构建完成。")
            p(b, "如果对某些构建过程不熟悉，可以到Actions MarketPlace（https://github.com/marketplace?type=actions）找到对应的构建脚本并直接使用。官方中文文档地址：https://docs.github.com/zh/actions。")
            a(b, attrs("href", "https://www.cnblogs.com/jonil/p/17666389.html"), "阅读原文 - 博客园")
            a(b, attrs("href", "https://github.com/marketplace?type=actions"), "GitHub Actions MarketPlace")
        }
    )
}
