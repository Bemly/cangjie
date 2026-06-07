package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB01nodeexpressPost(): Post {
    return Post(
        "01-node-express",
        "手把手教前端从0到1通过 Node + Express 开发简易接口",
        "2024-08-19",
        "从0到1通过 Node + Express 开发简易接口，包含项目开发与部署服务器的完整流程。",
        { b =>
            h2(b, "背景")
            p(b, "经过网上各种博客的洗礼与寻找，花了一早上终于解决了这个基本问题，完成了前端到后端从 0 到 1 的第一小步。")
            h2(b, "前置知识")
            p(b, "拥有一台服务器（如阿里云），安装了 Node 环境。")
            h2(b, "创建一个 Express 项目")
            p(b, "首先创建文件夹并初始化项目：")
            raw(b, "<pre><code>mkdir demo\ncd demo\nnpm init -y</code></pre>")
            p(b, "安装依赖：")
            raw(b, "<pre><code>npm install express\nnpm install body-parser</code></pre>")
            p(b, "并不需要安装 cors 这个依赖，很多项目都有这个，其实根本没必要。")
            h2(b, "写接口")
            p(b, "写一个简单的 get 接口示例：")
            raw(b, "<pre><code>const express = require('express');\nconst app = express();\nconst bodyParser = require('body-parser');\n\n// 允许跨域访问\napp.all('*', function(req, res, next) {\n   res.header(\"Access-Control-Allow-Origin\", \"*\");\n   res.header(\"Access-Control-Allow-Headers\", \"X-Requested-With\");\n   res.header(\"Access-Control-Allow-Methods\",\"PUT,POST,GET,DELETE,OPTIONS\");\n   res.header(\"X-Powered-By\",' 3.2.1');\n   res.header(\"Content-Type\", \"application/json;charset=utf-8\");\n   next();\n});\n\napp.use(bodyParser.urlencoded({ extended: false }));\n\nlet myGet = {method:\"get\",age:20,name:\"Smooth\",url:\"https://juejin.cn\"}\n\napp.get('/getDemo',(req,res)=>{\n    res.status(200);\n    res.json(myGet);\n});\n\napp.listen(3000, () => console.log('Example app listening on port 3000!'))</code></pre>")
            h2(b, "本地测试")
            p(b, "输入 node app.js 将 express 项目跑起来，出现提示则表示运行成功。然后写一个简单的 html 请求接口，使用 jQuery 的 ajax 调用 localhost:3000/getDemo 即可。")
            h2(b, "部署到服务器")
            p(b, "将项目上传到服务器后，使用 node app.js 启动即可。如果需要后台运行，可以使用 pm2 进行进程管理。前端页面可以直接放在服务器的 nginx 或其他静态文件服务器中。")
            a(b, attrs("href", "https://juejin.cn/post/7097831496550973454"), "阅读原文")
        }
    )
}
