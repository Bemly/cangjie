package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPythonapiPost(): Post {
    return Post(
        "pythonapi",
        "[Python]抓包获得青龙面板api - 代码狗",
        "2023-04-15",
        "使用 Python 抓包获取青龙面板 API 接口，实现自动化管理京东 Cookie。",
        { b =>
            h2(b, "青龙面板 API 抓包")
            p(b, "青龙面板已经玩儿了一段时间了，效果不错。由于各种公开的挂机代码经常被封，所以一般搭建好了就自己一个人用，非常浪费资源。有大佬自己抓包了青龙面板的请求接口，并封装成了 Python 的 API，感兴趣的可以自己试试。")
            h2(b, "主要功能")
            p(b, "代码通过 requests 库调用青龙面板的 Open API，实现了以下功能：get_token() 获取 token；match_ck() 比对 Cookie 进行更新，如果未启用则进行启用；get_all_ck() 获取青龙面板的所有变量；update_ck() 更新单个变量；add_ck() 添加变量；start_ck() 启用变量。")
            h2(b, "使用方法")
            p(b, "首先需要在 config.ini 中配置青龙面板地址、client_id 和 client_secret。然后创建 Update 实例，传入 Cookie 和可选的手机号码标记，调用 match_ck() 方法即可自动比对并更新 Cookie。")
            p(b, "代码会通过正则匹配 pt_pin 字段，与青龙面板中已有的变量进行比对。如果匹配成功则更新 Cookie，如果未启用则自动启用，如果没有匹配到则新增一个变量。")
            h2(b, "注意事项")
            p(b, "转自吾爱破解，代码未测试。青龙面板的 Open API 需要先在面板中创建应用获取 client_id 和 client_secret。知道手机号码的话可以传 phone 作为标记，不然账号太多会比较乱。")
            a(b, attrs("href", "https://www.daimadog.com/8342.html"), "阅读原文")
        }
    )
}
