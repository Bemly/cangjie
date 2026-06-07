package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxRunPost(): Post {
    return Post(
        "linux-run",
        "Linux Run 文件制作、使用介绍-谢先斌的博客",
        "2024-08-11",
        "Linux中run文件由两部分组成：可执行脚本和压缩文件，使用cat命令即可制作run文件。",
        { b =>
            h2(b, "Linux Run 文件制作、使用介绍")
            p(b, "Linux中run文件由两部分组成可执行脚本和压缩文件，下面介绍Linux中Run文件如何制作、使用。")
            h2(b, "介绍")
            p(b, "run文件的本质是：可执行脚本 + 分隔符 + 压缩文件。可执行脚本的作用是用来解压压缩文件，并对文件进行安装和配置，如创建文件夹、修改文件权限等。分隔符用于分隔脚本和压缩文件。压缩文件则是要安装的实际文件。")
            h2(b, "使用 cat 命令制作 run 文件")
            raw(b, "<pre><code>cat install.sh demo.tgz &gt; demo.run</code></pre>")
            h2(b, "安装")
            raw(b, "<pre><code>chmod +x demo.run\n./demo.run</code></pre>")
            h2(b, "示例")
            p(b, "首先下载可执行文件并压缩：")
            raw(b, "<pre><code>curl -Lfs -o demo https://github.com/xiexianbin/go-actions-demo/releases/latest/download/main-linux\ntar -zcvf demo.tgz demo</code></pre>")
            p(b, "创建版本文件并再次压缩：")
            raw(b, "<pre><code>echo \"v1.0.0\" &gt; VERSION\ntar -zcvf demo.tgz VERSION demo</code></pre>")
            h2(b, "install.sh 脚本内容")
            raw(b, "<pre><code>#!/bin/bash\nCDIR=`pwd`\nINSTALLDIR=$CDIR/hello\n\nif [ -d \"$INSTALLDIR\" ]; then\n    rm -rf \"$INSTALLDIR\"\nfi\n\nARCHIVE=`awk '/^__ARCHIVE_BOUNDARY__/ { print NR + 1; exit 0; }' $0`\ntail -n +$ARCHIVE $0 | tar -xf -\nchmod +x demo\n\nexit 0\n__ARCHIVE_BOUNDARY__</code></pre>")
            p(b, "说明：exit 0 是必须的，防止继续执行到压缩包内容而引起错误。__ARCHIVE_BOUNDARY__ 是分隔符，可以自定义，类似于 HTTP 协议中的 boundary。")
            h2(b, "制作 run 文件")
            raw(b, "<pre><code>cat install.sh demo.tgz &gt; demo.run</code></pre>")
            p(b, "安装运行：")
            raw(b, "<pre><code>chmod +x demo.run\n./demo.run</code></pre>")
            a(b, attrs("href", "https://www.xiexianbin.cn/linux/shell/how-to-make-linux-run-file/index.html"), "阅读原文")
        }
    )
}
