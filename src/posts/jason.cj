package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJasonPost(): Post {
    return Post(
        "jason",
        "Jason - AI在学，人也在学",
        "2023-04-14",
        "Jason 的个人博客，关注 AI 技术、Agent 开发和效率提升。",
        { b =>
            h2(b, "Jason 的个人博客")
            p(b, "Jason 的博客简介：AI在学，人也在学。这是一个关注 AI 技术、Agent 开发、大模型应用和个人效率提升的技术博客。")
            h2(b, "近期文章精选")
            p(b, "你可能只用了 Claude 三分之一的能力：Anthropic 做了三个产品——Chat、Code、Cowork。同一个 AI，三种完全不同的使用方式，你可能只用了最基础的那个。")
            p(b, "用 grep 打败向量搜索：大家都在卷嵌入模型、卷向量库、卷重排序，但一篇新论文告诉你，在 AI Agent 里，那个古老的 grep 可能才是隐藏王者。")
            p(b, "AI Agent 核心技术：Agent 不是一段会调用工具的提示词，而是一套围绕大语言模型搭起来的工作系统。文章从同一个框架出发，讲清 Prompt Engineering、Context Engineering、Harness Engineering 分别在解决什么问题。")
            p(b, "LangChain、LangGraph、Deep Agents：三者核心能力与选型指南，基于官方文档梳理核心能力与适用场景。")
            p(b, "三部门发文，智能体迎来重大利好：国家网信办、国家发展改革委、工业和信息化部联合印发《智能体规范应用与创新发展实施意见》，释放出智能体从概念走向产品的明确信号。")
            h2(b, "技术主题")
            p(b, "博客涵盖的主要技术领域包括：AI Agent、LLM、大模型、Context Engineering、Embedding、LangChain、Prompt Engineering、RAG、Function Call 等。使用 Jekyll 主题 Chirpy 搭建。")
            a(b, attrs("href", "https://zhengjie9510.github.io/"), "访问博客")
        }
    )
}
