package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCentosCjkttyPost(): Post {
    return Post(
        "centos-cjktty",
        "centos 编译安装新内核并添加中文内核补丁(cjktty)模块 - 尘星空 - 博客园",
        "2024-08-10",
        "在CentOS上编译安装Linux内核并添加cjktty中文内核补丁的完整步骤，包括下载源码、应用补丁、配置编译选项和解决依赖问题",
        { b =>
            h2(b, "下载内核源码")
            p(b, "从kernel.org下载最新稳定版本的内核源码包到/usr/local/src目录并解压。例如下载linux-5.17.tar.xz。如果下载很慢可以直接到网址上下载好后再上传到centos。")
            h2(b, "添加中文内核补丁cjktty")
            p(b, "从GitHub克隆cjktty-patches中文补丁包：git clone https://github.com/zhmars/cjktty-patches/。如果克隆不下来可以直接去网址上下载再上传。")
            p(b, "安装patch工具，进入内核源码目录，执行patch -Np1 < ../cjktty/v5.x/cjktty-5.17.patch将cjktty补丁添加到内核源码上。")
            h2(b, "拷贝config配置文件")
            p(b, "从/boot目录将现有版本的内核编译config配置文件拷贝到新内核源码目录并重命名为.config。这样做是为了方便，该文件保存了系统安装时内核的模块配置信息，避免重新手动指定每个模块的编译配置。")
            h2(b, "安装依赖包")
            p(b, "安装开发工具包组：yum -y groupinstall \"development tools\"。安装ncurses-devel包(make menuconfig文本界面依赖)：yum -y install ncurses-devel。")
            h2(b, "升级GCC")
            p(b, "CentOS以稳定性著称，基础软件版本非常低。通过安装devtoolset来管理gcc各版本并自由切换。devtoolset-3对应gcc4.x.x，devtoolset-8对应gcc8.x.x。安装后使用scl enable devtoolset-8 bash启用新版本。")
            h2(b, "配置编译选项")
            p(b, "运行make menuconfig进入文本界面编译选项菜单。需要修改三个项目：1.清空Provide system-wide ring of trusted keys内容。2.确认勾选CJK 16x16 font和CJK 32x32 font。3.建议在Local version添加-cjktty描述。")
            p(b, "如需添加内核NTFS文件系统支持模块，可在File systems -> DOS/FAT/NT Filesystems中选择NTFS file system support，建议以模块方式(M选项)编译。")
            h2(b, "编译内核")
            p(b, "执行make -j 4根据CPU核数开启多线程编译以加快速度。如果遇到openssl/opensslv.h找不到的错误，需要创建软连接：ln -s /usr/local/openssl/include/openssl /usr/include/openssl。")
            a(b, attrs("href", "https://www.cnblogs.com/whq5051/p/16058860.html"), "阅读原文")
        }
    )
}
