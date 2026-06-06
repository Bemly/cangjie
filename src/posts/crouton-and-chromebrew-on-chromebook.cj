package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCroutonAndChromebrewOnChromebookPost(): Post {
    return Post(
        "crouton-and-chromebrew-on-chromebook",
        "Crouton and Chromebrew on Chromebook",
        "2023-08-10",
        "作者分享在 Chromebook 上使用 Crouton 和 Chromebrew 的经验，对比两者的优缺点和使用场景。",
        { b =>
            h2(b, "Crouton and Chromebrew on Chromebook")
            p(b, "作者在使用 Termux 六个月后，切换到了 Crouton 配合 Chromebrew。Termux 的问题是 pkg upgrade 后出了问题很难找到解决方案。而 Crouton 使用 chroot 安装完整的 Linux 系统，维护起来容易得多。")
            p(b, "Chromebrew 是 ChromeOS 原生 shell 的包管理工具，类似 Mac 上的 homebrew，命令是 crew。作者更倾向于尽可能使用 crew，因为它少了一层间接，图形支持也更原生。Crouton 的图形分辨率要么太高要么太低。")
            p(b, "作者通过 Chromebrew 使用 python、go、make、git、latex、ruby、aws、gcloud、vim、vscode 等工具，都运行良好。唯一遇到问题的是 npm 和 vue，所以在 Crouton 的 Ubuntu 18.04LTS 中安装了它们。")
            p(b, "安装 Chromebrew 只需运行 curl -Ls git.io/vddgY | bash。默认安装包含 python3、git、make、gcc/g++、ruby 等包。还可以用 crew install vim 安装更新版本的 vim。")
            p(b, "安装 Crouton 时，作者安装了 Ubuntu 18.04LTS（Bionic Beaver），使用命令 sudo sh ~/Downloads/crouton -r bionic -t xiwi,xfce。xfce 是轻量级桌面管理器，xiwi 可以将 Linux 系统更好地集成到 Chrome OS 中。")
            p(b, "使用 xiwi 时，Linux 系统变成一个应用（类似 Android 应用），更容易切换系统。甚至可以在 Chrome 浏览器标签中运行 Linux GUI。视觉质量比原生渲染差，但不会有短暂卡顿的问题。")
            p(b, "基本使用：只需终端时运行 sudo enter-chroot；需要图形桌面时运行 sudo startxfce4 -b（-b 表示后台运行）；在浏览器标签中运行 vscode 使用 sudo startxiwi -T code。")
            p(b, "Google 还启动了 Project Crostini 项目，使用容器技术支持 Chrome OS 原生 Linux 应用，甚至不需要开发者模式。")
            a(b, attrs("href", "https://nosarthur.github.io/coding/2018/07/16/crouton.html"), "阅读原文")
        }
    )
}
