package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAzureOpenaiChatgptPost(): Post {
    return Post(
        "azure-openai-chatgpt",
        "使用 Azure OpenAI 打造自己的 ChatGPT",
        "2023-03-30",
        "Azure OpenAI 的完整使用教程，从创建服务、模型部署、API 调用到用 Docker 一键搭建自己的 ChatGPT。",
        { b =>
            // ========== 一.前言 ==========
            h2(b, "一.前言")
            p(b, "当今的人工智能技术正在不断发展，越来越多的企业和个人开始探索人工智能在各个领域中的应用。其中，在自然语言处理领域，OpenAI 的 GPT 系列模型成为了研究热点。OpenAI 公司的 ChatGPT 带起了一波 AI 应用的浪潮，一些科技公司都在努力跟进，比如百度的文心一言，Google 的 Bard 以及 Notion AI。就目前体验来说还是 OpenAI ChatGPT 表现最好。")
            p(b, "作为 OpenAI 公司的大股东，Microsoft 当然是使用其服务的一等公民，陆续推出了 GitHub Copilot、New Bing、Office 365 Copilot 和 Github Copilot X 等等。目前 Microsoft Azure 是独一家的提供 OpenAI 云服务的云厂商，Azure OpenAI 提供的 API 服务使得构建和部署自己的 ChatGPT 成为了可能。")

            // ========== 二.对比 ==========
            h2(b, "二.对比")
            p(b, "Azure OpenAI 和 OpenAI 官方提供的服务基本是一致的，但是目前前者还是处于预览版的状态，一些功能还没有完全开放。")
            raw(b, "<p><strong>注意：</strong>需要使用 Azure 国际版，<a href=\"https://azure.microsoft.com/en-us/products/cognitive-services/openai-service?WT.mc_id=DT-MVP-5003133\">点此进行申请</a></p>")
            p(b, "优点：")
            raw(b, "<ul><li>不受地域限制，国内可以直接调用。</li><li>可以自己上传训练数据进行训练（据说很贵）。</li><li>Azure 多语言 SDK 支持。</li><li>更适合企业私有化，数据可完全控制删除。</li></ul>")
            p(b, "缺点：")
            raw(b, "<ul><li>部分功能未开放，但 ChatGPT 的功能是没问题的。</li><li>和 OpenAI 官方的 API 标准有差异，<strong>无法直接用</strong>一些只支持 OpenAI 官方API 的开源项目。</li></ul>")
            raw(b, "<blockquote>Azure OpenAI 也已经支持 GPT-4 了，需要单独进行申请，本文暂时以 GPT-3.5 进行演示。</blockquote>")

            // ========== 三.使用 Azure OpenAI ==========
            h2(b, "三.使用 Azure OpenAI")
            h3(b, "1.创建服务")
            p(b, "进入 Azure 后，直接搜索 \"Azure OpenAI\"。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/azure-search.avif", "alt", "Azure 搜索 OpenAI", "style", "max-width:100%"))
            p(b, "选择你已经申请通过的订阅进行创建。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/create-subscription.avif", "alt", "选择订阅创建", "style", "max-width:100%"))
            p(b, "如果该订阅没有启动则不能创建。")

            h3(b, "2.创建模型部署")
            p(b, "在资源管理->模型部署 选择需要的模型进行创建，每个模型只能创建1个部署。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/model-deployment.avif", "alt", "模型部署", "style", "max-width:100%"))

            h3(b, "3.Azure OpenAI Studio")
            p(b, "模型创建完成以后，我们可以直接使用 Azure OpenAI Studio 来进行快速的测试。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/openai-studio.avif", "alt", "Azure OpenAI Studio", "style", "max-width:100%"))
            p(b, "ChatGPT 测试。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/chatgpt-test.avif", "alt", "ChatGPT 测试界面", "style", "max-width:100%"))
            p(b, "上传自己的数据集。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/upload-dataset.avif", "alt", "上传数据集", "style", "max-width:100%"))

            // ========== 四.API 调用 ==========
            h2(b, "四.API 调用")
            p(b, "在 资源管理->密钥和终结点 可以获取 API 地址以及调用密钥。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/api-keys.avif", "alt", "密钥和终结点", "style", "max-width:100%"))
            raw(b, "<p>查看 <a href=\"https://learn.microsoft.com/en-us/azure/cognitive-services/openai/chatgpt-quickstart?WT.mc_id=DT-MVP-5003133\">API 文档</a></p>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/api-docs.avif", "alt", "API 文档", "style", "max-width:100%"))
            p(b, "使用 POSTMAN 进行调用测试。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/postman-test.avif", "alt", "POSTMAN 调用测试", "style", "max-width:100%"))

            // ========== 五.打造自己的 ChatGPT ==========
            h2(b, "五.打造自己的 ChatGPT")
            h3(b, "1.Azure OpenAI Proxy")
            raw(b, "<p>打造自己的 ChatGPT 推荐直接使用 <a href=\"https://github.com/Chanzhaoyu/chatgpt-web\">chatgpt-web</a> 这个项目。</p>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/chatgpt-web-project.avif", "alt", "chatgpt-web 项目", "style", "max-width:100%"))
            p(b, "前面我们说到 API 调用是有差异的，此项目目前还没用直接支持 Azure OpenAI。我尝试修改过这个项目，可以调用了但是有个问题，无法正常的自动结束对话，跟了代码发现有 Bug：")
            raw(b, "<p><a href=\"https://github.com/Chanzhaoyu/chatgpt-web\">chatgpt-web</a> → <a href=\"https://github.com/transitive-bullshit/chatgpt-api\">chatgpt-api</a> → <a href=\"https://github.com/rexxars/eventsource-parser\">eventsource-parser</a></p>")
            p(b, "最终在 eventsource-parser 这个 package 里，无法适应 Azure OpenAI 返回的结果，做过对比发现 Azure OpenAI 返回的调用最后少了一个换行 \\n。")
            p(b, "最终我便想了个方法，自己实现一个 Proxy 转换 OpenAI 官方 API 标准到 Azure OpenAI 标准，这样就能让 Azure OpenAI 直接对接到任何支持 OpenAI 的任何项目中，并且可以顺便修复上面所说的差异，让 chatgpt-web 直接使用 Azure OpenAI。")
            raw(b, "<p>项目地址：<a href=\"https://github.com/stulzq/azure-openai-proxy\">azure-openai-proxy</a>，希望大家点点 star。</p>")

            h3(b, "2.搭建")
            p(b, "最快的方式当然是使用 Docker，以下是 docker compose 脚本：")
            raw(b, """<pre><code>version: '3'

services:
  chatgpt-web:
    image: chenzhaoyu94/chatgpt-web
    ports:
      - 3002:3002
    environment:
      OPENAI_API_KEY: &lt;Azure OpenAI API Key&gt;
      OPENAI_API_BASE_URL: http://azure-openai:8080
      AUTH_SECRET_KEY: ""
      MAX_REQUEST_PER_HOUR: 1000
      TIMEOUT_MS: 60000
    depends_on:
      - azure-openai
    links:
      - azure-openai
    networks:
      - chatgpt-ns

  azure-openai:
    image: stulzq/azure-openai-proxy
    ports:
      - 8080:8080
    environment:
      AZURE_OPENAI_ENDPOINT: &lt;Azure OpenAI API Endpoint&gt;
      AZURE_OPENAI_MODEL_MAPPER: &lt;Azure OpenAI API Deployment Mapper&gt;
      AZURE_OPENAI_API_VER: 2023-03-15-preview
    networks:
      - chatgpt-ns

networks:
  chatgpt-ns:
    driver: bridge</code></pre>""")
            p(b, "启动有 3 个环境变量需要配置：")
            raw(b, """<table>
<tr><th>变量名</th><th>说明</th></tr>
<tr><td>OPENAI_API_KEY</td><td>Azure 密钥和终结点 里提供的 Key</td></tr>
<tr><td>AZURE_OPENAI_ENDPOINT</td><td>Azure 密钥和终结点 里提供的终结点</td></tr>
<tr><td>AZURE_OPENAI_MODEL_MAPPER</td><td>Azure 部署模型名称映射到 OpenAI 官方模型名称</td></tr>
</table>""")
            p(b, "特别说明一下 AZURE_OPENAI_MODEL_MAPPER：使用 OpenAI 官方标准发起的请求里包含的模型名称是固定的，而在 Azure OpenAI 模型部署时是可以自定义名称的，请求 Azure 需要提供这个部署模型的名称，所以建立了一个映射关系。")
            p(b, "比如我在 Azure 部署了一个 gpt-3.5-turbo 模型，我设置的部署名称为 xc-gpt-35，此时我的设置：")
            raw(b, "<pre><code>AZURE_OPENAI_MODEL_MAPPER: gpt-3.5-turbo=xc-gpt-35</code></pre>")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/azure-openai/model-mapper.avif", "alt", "模型映射配置", "style", "max-width:100%"))

            // ========== 六.结束 ==========
            h2(b, "六.结束")
            p(b, "Azure OpenAI 平台为开发人员提供了一个强大的工具，可以轻松地创建和训练 ChatGPT 模型。随着 ChatGPT 技术的不断发展，它将在越来越多的应用场景中发挥重要作用，为人们提供更加智能和个性化的服务和体验。")

            // ========== 出处 ==========
            h2(b, "出处")
            raw(b, "<p>本文转载自：<a href=\"https://www.cnblogs.com/stulzq/p/17271937.html\">晓晨Master — 使用 Azure OpenAI 打造自己的 ChatGPT</a></p>")
        }
    )
}
