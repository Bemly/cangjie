package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB2024rustuirustcrossplatformuilibraryPost(): Post {
    return Post(
        "2024-rustui-rust-cross-platform-ui-library",
        "2024 Rust跨平台ui框架 Rust Cross Platform UI Library...",
        "2024-08-08",
        "Rust跨平台UI框架对比：Tauri、egui、Slint、Iced、Dioxus等框架的平台支持、底层原理和特色功能",
        { b =>
            h2(b, "仓库数据 Repo Status")
            p(b, "本文对比了2024年主流的Rust跨平台UI框架，包括Tauri、egui(bevy)、Slint、Iced、Dioxus、Relm4、Flutter rust bridge等，从Stars、Issue、版本活跃程度等多个维度进行了分析。")
            h2(b, "支持平台 Supported Platform")
            p(b, "Tauri支持网页、安卓(beta)、PC平台，底层使用Servo嵌入式浏览器。egui/bevy支持网页和PC，安卓端尚在TODO。Slint支持网页(PC和嵌入式均有支持)。Iced支持网页和PC。Dioxus支持网页、安卓和PC，还支持终端。Relm4/GTK4支持PC。Flutter支持网页、安卓、PC和嵌入式平台。")
            h2(b, "原理介绍 Intro")
            p(b, "Tauri底层使用本机webview，开发支持web项目如Vite(Vue)、Next.js、SvelteKit等，采用Apache-2.0协议。egui底层使用bevy引擎。Slint提供C++、JS、Rust的API支持，采用GPLv3协议(免版税，有商业版)。Iced和Dioxus均采用MIT/Apache-2.0协议。Relm4基于GTK4。Flutter使用Canvas渲染，开发语言为Dart。")
            h2(b, "特色功能 Features")
            p(b, "Tauri支持热重载和实时预览(通过TAO)。egui/bevy仅支持资源热重载。Slint支持热重载和多窗口。Iced的热重载和多窗口功能均在issue中。Dioxus支持热重载。Flutter支持热重载。")
            h2(b, "前端web框架")
            p(b, "create-tauri-app时也能用Rust写前端(leptos、sycamore、yew、vanilla)，但如果要快速开发、快速更改需求，还是用传统的js框架(Vite)为佳。Rust的第三方UI库没有多少，而Vue3甚至还有低代码生成器。wasm打包比js更小，做高性能本机应用时可以考虑用Rust写前端。")
            h2(b, "多窗口实践")
            p(b, "文中讨论了bevy+tauri多窗口的多种方案：bevy in tauri、tauri(wry) in bevy等。Tauri背靠web生态，Slint占用低且支持嵌入式，bevy做3D渲染。作者提出了Popup Virus的设想：bevy做3D、tauri做特殊弹窗、slint做普通弹窗。")
            a(b, attrs("href", "https://www.cnblogs.com/nolca/p/17795473.html"), "阅读原文")
        }
    )
}
