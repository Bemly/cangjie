package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog13Post(): Post {
    return Post(
        "blog-13",
        "百度 URL 参数解析大全",
        "2022-02-17",
        "详细解析百度搜索 URL 中各个参数的含义，包括 ie、f、rsv_bp、wd、tn 等参数的完整说明。",
        { b =>
            p(b, "本文整理自 Joe.Smith 的文章，详细解析百度搜索 URL 中各个参数的含义。")
            h2(b, "URL 格式分解")
            raw(b, "<pre><code>https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&wd=java...</code></pre>")
            h2(b, "参数详解")
            h3(b, "ie - 编码格式")
            p(b, "关键字编码格式，默认为 GB2312 简体中文。")
            h3(b, "f - 搜索方式")
            p(b, "值有 1、3、8 等。1 指相干搜索；3 下拉框搜索；8 用户自立搜索（直接点击百度一下）。")
            h3(b, "rsv_bp - 搜索框位置")
            p(b, "使用的是百度哪一个搜索框：0 是首页输入；1 是顶部搜索输入；2 是底部搜索输入。")
            h3(b, "wd - 查询关键字")
            p(b, "查询关键字 (word)，一般以 URL 编码形式出现，需要解码才能看到真实内容。")
            h3(b, "tn - 请求来源")
            p(b, "提交搜索请求来源。如 tn=baidulocal 表示百度站内搜索，tn=baiduerr 表示从错误页搜索跳转。")
            h3(b, "rsv_pq - 关联关键词")
            p(b, "用来记录关键词和上一次搜索的关键词（相干关键词）。")
            h3(b, "rsv_t - 随机密码")
            p(b, "搜索效果的一种随机密码保护措施。")
            h3(b, "其他参数")
            p(b, "rqlang 跟地域有关（cn 代表中国）；rn 为每页显示数目（默认 10，最大 50）；pn 为显示结果页数；cl 为搜索类型（3 为网页搜索）；ct 为语言限定；lm 为时间限制（以天为单位）。")
            a(b, attrs("href", "https://www.cnblogs.com/c-x-a/p/6897695.html"), "阅读原文")
        }
    )
}
