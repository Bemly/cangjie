package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSerpentOslinuxPost(): Post {
    return Post(
        "serpent-oslinux",
        "认识Serpent OS：正在开发的真正现代的Linux发行版 - Linux迷",
        "2025-01-07",
        "Serpent OS是由Solus OS创始人Ikey Doherty宣布创建的全新Linux发行版。",
        { b =>
            h2(b, "Serpent OS简介")
            p(b, "自由选择、定制、创建和分发是Linux的特色，这就是为什么有500多个基于Linux的操作系统。现在还将推出另一个名为Serpent OS的新Linux发行版，目前正在大力开发中。Serpent OS是一个新项目，由Ikey Doherty宣布，他是Lispy Snake的首席执行官，也是Solus OS的前领导者和创始人。")
            p(b, "Ikey Doherty给了我们一个最漂亮的Linux发行版Solus OS和桌面环境Budgie。他离开Linux世界一年后创立了Lispy Snake Ltd.，这是一家独立游戏工作室。现在他宣布将创建一个全新的真正现代的Linux发行版，称为Serpent OS或Serpent Linux。")
            h2(b, "Serpent OS的独特之处")
            p(b, "Serpent OS承诺有与其他发行版不同的目标，针对Linux发行版进行高度优化，同时具有模块化设计。正如Ikey所说，如果你在寻找现代的、轻量级的、用户友好的、注重隐私的Linux桌面发行版，那么你就找错地方了。Serpent不是一个GNU/Linux发行版。")
            p(b, "在后台，Serpent Linux将不会使用GNU工具链或运行时，而将完全使用LLVM/Clang构建。它将使用musl作为C标准库，以及使用libc++代替libstdc++作为C++标准库。这是高级Linux发行版，将针对现代机器进行模块化和优化，绝对不适合初学者和想要在较旧硬件上运行的人。")
            h2(b, "开发理念与发布计划")
            p(b, "Ikey Doherty说：我们专注于构建满足我们自己需求的Linux发行版。简而言之，这不是面向大众的Linux，这是一个计划使用Linux的项目，因为应该使用Linux。Serpent可能不会提供专有的驱动程序支持，例如NVIDIA及其缺乏对GPU上Wayland加速的支持，因此可能会将NVIDIA专有驱动程序列入黑名单。")
            p(b, "该项目目前处于阶段1引导阶段，阶段2已准备就绪。开发将在7月底的某个时候开始。Serpent OS作为一个真正现代的Linux发行版，代表了Linux生态系统中的一种新尝试，专注于模块化和优化，为高级用户提供一个独特的选择。")
            a(b, attrs("href", "https://www.linuxmi.com/serpent-os-linux.html"), "阅读原文")
        }
    )
}
