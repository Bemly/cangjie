package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWpsForLinuxwindowsNorniPost(): Post {
    return Post(
        "wps-for-linuxwindows-norni",
        "解决wps for linux缺失windows字体 - Norni - 博客园",
        "2021-09-15",
        "解决WPS for Linux缺失Windows字体的问题，通过下载并安装缺失字体包即可解决。",
        { b =>
            h2(b, "解决WPS for Linux缺失Windows字体")
            p(b, "在Linux上使用WPS时，经常会遇到提示缺失Windows字体的问题。以下是完整的解决步骤：")
            p(b, "1、下载缺失字体包（wps-font-symbols.zip）并解压。")
            p(b, "2、移动字体到系统字体文件夹：")
            raw(b, "<pre><code>sudo cp -f wps-font-symbols /usr/share/fonts</code></pre>")
            p(b, "3、修改字体权限：")
            raw(b, "<pre><code>cd /usr/share/fonts\nsudo chmod 755 wps-font-symbols\ncd /usr/share/fonts/wps-font-symbols\nsudo chmod 644 *</code></pre>")
            p(b, "4、生成字体索引：")
            raw(b, "<pre><code>cd /usr/share/fonts/wps-font-symbols\nsudo mkfontscale\nsudo mkfontdir</code></pre>")
            p(b, "5、更新字体缓存：")
            raw(b, "<pre><code>sudo fc-cache</code></pre>")
            p(b, "6、重启WPS，问题解决。")
            a(b, attrs("href", "https://www.cnblogs.com/nuochengze/p/12344985.html"), "阅读原文")
        }
    )
}
