package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntuaptPost(): Post {
    return Post(
        "ubuntuapt",
        "Ubuntu配置apt国内源",
        "2021-10-03",
        "将Ubuntu系统的默认APT源修改为阿里源，以加速软件包的安装与更新。",
        { b =>
            p(b, "目前Linux系统已经逐渐被很多开发者所接受和喜好，尤其是Ubuntu系统更是将Linux的桌面系统做的相当完善。考虑到Ubuntu的默认源在国外速度较慢，本文修改为阿里源。")
            h2(b, "备份配置文件")
            p(b, "以防万一，需要将原来的apt源配置文件备份。apt软件源配置文件为 /etc/apt/sources.list，记录所有软件包的仓库，同类型的还有同级目录下 sources.list.d/ 的以list为后缀的文本文件。")
            p(b, "sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak")
            h2(b, "查看系统代号")
            p(b, "网上查阅apt源配置教程得到的结果不太一样，这是因为Ubuntu每个版本的系统代号都不一致。通过命令 lsb_release -c 查看，例如Ubuntu 18.04的代号是bionic。")
            h2(b, "修改配置文件")
            p(b, "将配置文件修改为阿里源。格式如下，注意将代号替换为你的系统版本：")
            p(b, "deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse")
            p(b, "deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse")
            p(b, "deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse")
            p(b, "deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse")
            h2(b, "更新软件列表")
            p(b, "修改完成后，执行 sudo apt-get update 更新软件列表，然后执行 sudo apt-get upgrade 升级软件包。")
            a(b, attrs("href", "https://blog.csdn.net/zhouchen1998/article/details/104496149"), "阅读原文")
        }
    )
}
