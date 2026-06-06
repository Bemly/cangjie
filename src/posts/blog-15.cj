package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog15Post(): Post {
    return Post(
        "blog-15",
        "博客通用版 Live2d 伊斯特瓦尔发布",
        "2021-02-22",
        "通用版博客 Live2D 看板娘插件，基于《超次元游戏海王星》伊斯特瓦尔模型，支持图灵机器人聊天接口。",
        { b =>
            p(b, "基于之前 emlog 插件版和 Typecho 插件版的 Live2D 伊斯特瓦尔看板娘，去掉了 emlog 特制功能后的通用版本。")
            h2(b, "功能特性")
            raw(b, "<ul><li>可基于图灵机器人的聊天功能（需要自己写接口，默认隐藏）</li><li>能够随意移动并记录位置（关闭浏览器后失效）</li><li>能够随意唤醒或关闭并记录状态</li><li>自动判断浏览器是否为 IE 或手机浏览器，如为 true 则不加载</li><li>骚扰频率限制</li></ul>")
            h2(b, "使用方法")
            p(b, "去码云或 GitHub 克隆最新版本，把解压出来的文件夹改名为 live2d。")
            p(b, "在页面头部文件（header）引入界面样式，在 head 标签内插入 CSS 引用。")
            raw(b, "<pre><code>&lt;link rel=\"stylesheet\" href=\"/live2d/css/live2d.css\" /&gt;</code></pre>")
            p(b, "在 body 标签内找到合适的位置插入 Live2D 看板娘的 HTML 元素。然后在 body 标签结束前插入 JavaScript 引用。")
            raw(b, "<pre><code>&lt;script type=\"text/javascript\" src=\"https://apps.bdimg.com/libs/jquery/1.7.1/jquery.min.js\"&gt;&lt;/script&gt;\n&lt;script&gt;\nvar message_Path = '/live2d/';\nvar talkAPI = \"\";\n&lt;/script&gt;\n&lt;script type=\"text/javascript\" src=\"live2d/js/live2d.js\"&gt;&lt;/script&gt;\n&lt;script type=\"text/javascript\" src=\"live2d/js/message.js\"&gt;&lt;/script&gt;</code></pre>")
            h2(b, "模型说明")
            p(b, "本插件用到的模型为《超次元游戏海王星》系列中的伊斯特瓦尔，动作表情取自 Live2D 官方 demo，版权归各官方所有。原项目使用 GPL v2 开源协议。")
            a(b, attrs("href", "https://www.wikimoe.com/?post=76"), "阅读原文")
        }
    )
}
