package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRunSanduoBlogPost(): Post {
    return Post(
        "run-sanduo-blog",
        "run格式文件破解 - sanduo blog",
        "2024-08-11",
        "介绍Linux下run格式文件的结构、制作方法和解压方法，run文件实质上是一个安装脚本加要安装的程序的组合。",
        { b =>
            h2(b, "run格式文件破解")
            h3(b, "run文件介绍")
            p(b, "在RUN格式的文件是一个可执行的基于Linux的应用程序，包含了为Linux平台开发的具体方案相关的代码。此代码通常初始化应用程序本身，虽然在某些情况下，在文件.RUN扩展指程序安装用于Linux操作系统开发的应用程序。设备驱动软件为Linux常常被捆绑并分发.RUN包中包含的文件。")
            h3(b, "如何运行run文件")
            p(b, "一个.RUN文件失败初始化最有可能是缺乏来自Linux操作系统相应的可执行权限。使用chmod +x filenamehere.run可以通过这个chmod命令添加所需的权限予以纠正。用户可以事后使用此命令初始化：./filenamehere.run。")
            h3(b, "如何构建run文件")
            p(b, "run程序安装包实质上是一个安装脚本加要安装的程序。通常为了方便，只放一个程序或者是一个压缩包。整个run安装包结构一目了然，实际上因为实际需要结构多少有点变动但只需要明白原理就行了。")
            p(b, "制作方法示例：有一个安装脚本install.sh和一个要安装的程序helloworld。首先将程序打包：tar zcvf helloworld.tar.gz helloworld。然后修改安装脚本，使用tail命令巧妙地把脚本后面的二进制数据提取出来：tail -n +6 \"$0\" >/tmp/helloworld.tar.gz。最后使用cat命令连接安装脚本和压缩包：cat install.sh helloworld.tar.gz > myinstall.run。")
            h3(b, "解压run文件")
            p(b, "怎么样构建的run文件，怎么样解压run文件，但是解压之前你得需要明确文件的结构，也就是文件拆分的行数。使用notepad++、winhex等文本编辑工具打开run文件，获取安装shell脚本，小文件可以直接用notepad++查看，大文件建议先用winhex、010editor等工具打开，将shell文件拷贝出来再进行分析。")
            p(b, "通过分析run文件中的shell脚本，重点关注tail命令的参数（如-n +6），通过这行能确认具体安装程序从第几行开始。然后通过tail工具直接获取压缩包：tail -n +6 myinstall.run>/tmp/helloworld.tar.gz。也可以使用sed命令：sed -n -e '1,/^exit 0$/!p' ./myinstall.run > ./helloworld.tar.gz 2>/dev/null。")
            a(b, attrs("href", "https://hksanduo.github.io/2020/05/28/2020-05-28-crack-run-program/"), "阅读原文")
        }
    )
}
