package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP1panelwaflongjuansblogcoPost(): Post {
    return Post(
        "1panelwaf-longjuans-blog-co",
        "1Panel旁路接入雷池WAF（非反向代理套娃）-longjuan's Blog - 龙卷co...",
        "2024-09-23",
        "在1Panel中旁路接入雷池WAF的完整实践，无需修改网络架构即可实现WAF无感接入。",
        { b =>
            h2(b, "选型")
            p(b, "在WAF选型过程中，考虑了两款WAF解决方案：南墙WAF和雷池WAF。通过GitHub社区活跃度指标来看，雷池WAF的社区活跃度明显领先于南墙WAF。在1Panel的问题反馈中，雷池WAF的开发人员推荐了一种旁路模式接入方式，使用t1k Lua模块，该方式可实现WAF接入而无需进行大规模的网络架构修改。")
            h2(b, "雷池安装程序分析")
            p(b, "雷池的一键安装是以shell脚本的形式分发，脚本内容主要是以检查环境、创建文件夹及.env文件和启动docker-compose为主。在Docker Compose文件中定义了postgres、redis、management、detector、mario、tengine等服务。要实现WAF的旁路接入，需要干掉tengine，再在1Panel中的OpenResty安装t1k。")
            h2(b, "部署配置")
            p(b, ".env文件需要配置SAFELINE_DIR、MGT_PORT、POSTGRES_PASSWORD、REDIS_PASSWORD、SUBNET_PREFIX等参数。在/data/safeline目录下创建docker-compose.yml文件，包含postgres、mgt、detect、tengine、luigi、fvm、bridge、chaos等服务。")
            h2(b, "OpenResty替换tengine")
            p(b, "在1Panel应用商店安装OpenResty后，需要在docker-compose文件中添加安装t1k模块的命令。同时将/data/safeline/resources/detector映射到容器内部，以建立t1k与WAF之间的通讯。")
            h2(b, "站点配置")
            p(b, "创建t1k.conf配置文件，使用access_by_lua_block和header_filter_by_lua_block来配置t1k模块。在1Panel站点的反向代理配置文件中include /www/common/t1k.conf即可完成配置。对于静态站点，需要新建t1k_static_stie_location_root.conf。")
            h2(b, "后记")
            p(b, "尽管按照这种方法能够完美地利用1Panel的站点管理功能以及雷池的WAF，但在使用中发现Halo一直在频繁报错（403），可能是因为博客中包含了大量代码，被WAF误认为是恶意请求而触发了阻拦。可以通过将所有检测功能设为\"仅观察\"来缓解，或使用白名单功能。")
            a(b, attrs("href", "https://www.zway.top/archives/1panel-jie-ru-lei-chi-waf-fei-fan-xiang-dai-li"), "阅读原文")
        }
    )
}
