package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVue3vue2Post(): Post {
    return Post(
        "vue3vue2",
        "面试官：vue3有了解过吗？能说说跟vue2的区别吗？",
        "2024-08-19",
        "Vue3 相比 Vue2 的全面升级：速度更快、体积更小、更易维护、更接近原生、更易使用，新增 Composition API、Teleport、Fragments 等特性。",
        { b =>
            h2(b, "一、Vue3介绍")
            p(b, "关于 vue3 的重构背景，尤大是这样说的：Vue 新版本的理念成型于 2018 年末，当时 Vue 2 的代码库已经有两岁半了。主要考虑两点：首先是新的 JavaScript 语言特性在主流浏览器中的受支持水平；其次是当前代码库中随时间推移而逐渐暴露出来的一些设计和架构问题。")
            h2(b, "速度更快")
            p(b, "vue3 相比 vue2 重写了虚拟 DOM 实现，编译模板的优化，更高效的组件初始化。update 性能提高 1.3~2 倍，SSR 速度提高了 2~3 倍。")
            h2(b, "体积更小")
            p(b, "通过 webpack 的 tree-shaking 功能，可以将无用模块「剪辑」，仅打包需要的。对开发人员，能够对 vue 实现更多其他的功能，而不必担忧整体体积过大。")
            h2(b, "更易维护")
            p(b, "Composition API 可与现有的 Options API 一起使用，灵活的逻辑组合与复用。Vue3 模块可以和其他框架搭配使用。Vue3 是基于 TypeScript 编写的，可以享受到自动的类型定义提示。")
            h2(b, "更接近原生")
            p(b, "可以自定义渲染 API，通过 createRenderer 能够构建自定义渲染器，将 vue 的开发模型扩展到其他平台。")
            h2(b, "二、Vue3新增特性")
            p(b, "Fragments：在 Vue3 中，组件现在支持有多个根节点。Teleport：能够将模板移动到 DOM 中 Vue app 之外的其他位置，解决嵌套组件的定位、z-index 和样式问题。")
            p(b, "Composition API：通过组合式 API，能够更加容易维护代码，将相同功能的变量进行集中式管理。使用 ref、computed、onMounted 等函数式的方式组织逻辑。")
            raw(b, "<pre><code>export default {\n    setup() {\n        const count = ref(0)\n        const double = computed(() => count.value * 2)\n        function increment() {\n            count.value++\n        }\n        onMounted(() => console.log('component mounted!'))\n        return { count, double, increment }\n    }\n}</code></pre>")
            a(b, attrs("href", "https://vue3js.cn/interview/vue/vue3_vue2.html"), "阅读原文")
        }
    )
}
