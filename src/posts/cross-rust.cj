package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCrossRustPost(): Post {
    return Post(
        "cross-rust",
        "cross: rust 的跨平台编译利器",
        "2024-08-08",
        "cross是0配置的Rust跨平台编译工具，通过容器技术屏蔽各平台编译依赖，实现与cargo一致的使用体验",
        { b =>
            h2(b, "1. cross 介绍")
            p(b, "cross 是 0 配置的 Rust 跨平台编译工具，它有着使用简单、功能强大的特点，极大地方便了 rust 跨平台项目的构建、测试和发布。")
            h2(b, "2. cargo 跨平台编译及问题")
            p(b, "cargo 本身支持跨平台编译，可以使用 rustup target list 查看 target 列表，用 rustup target add 安装新的 target，然后用 cargo build --release --target 进行编译。")
            p(b, "但编译产物是非静态的二进制，运行时会对动态环境有依赖，如依赖 libc.so、libssl.so 等。对于运行在客户环境的 agent，要尽量减少外部依赖，因此需要编译为纯静态的二进制(如 x86_64-unknown-linux-musl)，此时使用 cargo 就不方便了。")
            p(b, "如果使用 musl 方式编译，需要依赖 musl libc 和 musl-gcc。如果要支持多平台的产物编译，除了安装对应的 musl target，还需要各个平台的 musl libc 和 musl-gcc 版本，搭建跨平台编译环境很不方便。")
            h2(b, "3. cross 进行跨平台编译")
            p(b, "cross 通过容器技术屏蔽了各个环境编译依赖的细节，实现了 0 配置的跨平台编译体验，而且保持了同 cargo 一致的体验。安装方法：cargo install cross，之后就可以使用 cross 替换 cargo 命令了。")
            p(b, "使用 cross build --release --target x86_64-unknown-linux-musl 进行编译时，cross 会根据 target 拉取对应的容器镜像，然后在容器镜像内部进行编译，编译的产物也会挂载在本机的 target 目录下。")
            h2(b, "4. cross 实现原理")
            p(b, "cross 的实现主要有两点：使用容器镜像屏蔽了各平台的依赖细节，以及内部调用 cargo 保证了与 cargo 命令完全一致的使用体验。")
            p(b, "以 x86_64-unknown-linux-musl 为例，执行 cross build 时会拉取该 target 对应的镜像。Dockerfile 中封装了基本的 lib(gcc、make、git)、cmake、xargo、musl-gcc 等依赖的安装细节。")
            h2(b, "5. 结语")
            p(b, "cross 作为一款 0 配置的 Rust 跨平台编译利器，极大地便捷了日常开发和测试、流水线跨平台和发布等工作。此外 cross 也支持 target 自定义镜像，方便用户将自定义的静态链接库等集成进去。")
            a(b, attrs("href", "https://hustclf.github.io/posts/3d1fe733/"), "阅读原文")
        }
    )
}
