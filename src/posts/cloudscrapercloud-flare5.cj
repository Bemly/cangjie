package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCloudscrapercloudFlare5Post(): Post {
    return Post(
        "cloudscrapercloud-flare5",
        "使用cloudscraper捅穿Cloud Flare的5秒盾 - 守护式等待 - 博客园",
        "2024-09-26",
        "介绍使用cloudscraper库绕过Cloud Flare免费版五秒盾，以及使用FlareSolverr Docker容器绕过付费版五秒盾的方法。",
        { b =>
            h2(b, "免费版的五秒盾")
            p(b, "要绕过Cloud Flare的免费版五秒盾非常简单，只需要使用一个第三方库叫做cloudscraper。可以使用pip来安装：pip install cloudscraper。安装完成以后，只需要使用3行代码就能绕过Cloud Flare的5秒盾。")
            raw(b, "<pre><code>import cloudscraper\nscraper = cloudscraper.create_scraper()\nresp = scraper.get('目标网站').text</code></pre>")
            p(b, "CloudScraper非常强大，它可以突破Cloud Flare免费版各个版本的五秒盾。而且它的接口和requests保持一致，原来用requests怎么写代码，现在只需要把requests.xxx改成scraper.xxx就可以了。")
            h2(b, "付费版的CloudFlare五秒盾")
            p(b, "付费版的CloudFlare五秒盾，可以使用Docker运行一个FlareSolverr容器来绕过。启动命令为：docker run -d --name=flaresolverr -p 8191:8191 -e LOG_LEVEL=info --restart unless-stopped ghcr.io/flaresolverr/flaresolverr:latest")
            p(b, "这个容器启动以后，会开启8191端口。通过往这个端口发送http请求，让它转发请求给目标网站，就可以绕过五秒盾。使用时需要向http://localhost:8191/v1发送POST请求，指定cmd为request.get和目标URL，maxTimeout设为60000。")
            p(b, "返回的数据是JSON格式，网页源代码在其中的solution.response中。FlareSolverr项目的关键在于其源代码中实现的绕过机制，大家可以阅读其源代码了解具体实现方式。")
            a(b, attrs("href", "https://www.cnblogs.com/yoyo1216/p/17356845.html"), "阅读原文")
        }
    )
}
