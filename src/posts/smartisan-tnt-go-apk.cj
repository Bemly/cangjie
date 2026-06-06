package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSmartisanTntGoApkPost(): Post {
    return Post(
        "smartisan-tnt-go-apk",
        "锤子 Smartisan TNT go 的 APK 逆向 - 企鹅大大的博客",
        "2024-09-16",
        "对锤子TNT go无线版中提取出来的APK进行逆向分析，使用dex2jar等工具反编译查看蓝牙和WiFi相关代码。",
        { b =>
            h2(b, "锤子 Smartisan TNT go 的 APK 逆向")
            p(b, "原创文章，转载请注明出处。参考教程：Apk包的破解与反编译。")
            h3(b, "准备工作")
            p(b, "锤子TNT go无线版一台、USB C to C线一根（建议）A to C也行其实、坚果R2 ROM备份、playload_dumper、dex2jar、ADB工具、Intellij IDEA、7z。")
            h3(b, "开始逆向")
            p(b, "从TNT go中提取出来的APK，在Arch Linux下安装依赖pacman -S unzip git，然后更改apk文件后缀为zip，解压后会有classes.dex classes2.dex两个文件。")
            p(b, "需要使用dex2jar来将jar逆向出来（aur源里面的会报错，直接从github中的release中下载下来）。下载dex2jar-2.1.zip，解压后执行d2j-dex2jar.sh逆向jar包。")
            p(b, "将当前目录导入到IDEA后，右键jar包->最下面添加为库，就可以打开jar包了。然后在com.smartisanos.boston.base下就可以看到关于蓝牙和WiFi的代码，然后将其反编译。")
            h3(b, "从坚果R2中提取TNT go安装包")
            p(b, "下载坚果R2 ROM，以8.5.0为例。在Arch Linux中安装python python-pip p7zip，下载ROM后解压zip文件拿到payload，下载payload_dumper，安装所需依赖后导出内部文件。")
            p(b, "解压system.img到system文件夹下，找到APK路径system/app/BostonScreenMirror，接下来就是解包逆向了。然而我不会安卓，令人感叹。")
            a(b, attrs("href", "https://qiedd.com/889.html"), "阅读原文")
        }
    )
}
