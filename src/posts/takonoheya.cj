package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTakonoheyaPost(): Post {
    return Post(
        "takonoheya",
        "TAKONOHEYA - Material Studio Linux下安装介绍",
        "2026-04-16",
        "Material Studio在Linux系统下的安装教程，涵盖SSH连接、软件安装和作业提交。",
        { b =>
            h2(b, "前言")
            p(b, "本文作为深入学习Material Studio的一点教程摘录，遵照着中国科技大学超级计算中心等网站的教程。Material Studio有一个Gateway模式，使用服务端/客户端的模式，可以让用户通过Windows上的软件在服务器端进行优化。但请注意，很多超算中心是禁止使用Gateway模式的，使用前请一定咨询管理员。")
            h2(b, "SSH连接与文件传输")
            p(b, "登录远程服务器需要SSH。Windows上常用的有WinSCP或Putty等软件，Linux则直接使用命令行。使用scp命令可以远程复制文件或文件夹，例如scp localfile username@ip_address:~/ 可以将本地文件复制到服务器的Home文件夹下。")
            p(b, "如果不想使用scp命令，可以利用sshfs将服务器的home目录挂载到本地。首先安装sshfs，然后在本地目录下建立挂载点，使用sshfs命令将服务器端的home文件夹挂载到本地。挂载成功后可以直接访问服务器远端的目录，非常方便。")
            h2(b, "Material Studio安装步骤")
            p(b, "第一步：登录服务器后，在个人账号下建立软件安装文件的存放目录，将软件安装包Materials Studio60.tar和软件许可msi.lic上传至该文件夹。解压缩文件后进入目录开始安装。")
            p(b, "第二步：执行安装命令./install并导入软件许可。一般以非root身份用户安装，安装过程中均默认即可，会在个人账号根目录下生成Accelrys目录。若遇到Bundled JRE不兼容的错误提示，需要安装glibc的32位库文件。若超算中心禁止使用客户端/服务器端模式，安装完成后需将gateway进程停用。")
            p(b, "第三步：软件及环境变量配置。编辑文件gw-info.sbd将cpucorestotal参数设置为系统全部CPU总核数。编辑.bashrc文件设置环境变量，添加Materials Studio的路径到PATH中。保存退出后重新登录系统或执行source ~/.bashrc使环境变量生效。")
            h2(b, "作业文件输入与提交")
            p(b, "使用CASTEP模块进行优化为例：打开Materials Studio客户端软件界面建立相关模型，在Castep的Calculation对话框中设置参数；选择File->Save Files生成包含命令行运行Castep输入文件的目录；使用Tools->File Transfer功能将文件上传到服务器上。")
            p(b, "提交作业命令为RunCASTEP.sh，其中-q指定使用的队列，-np指定使用的进程数，seedfile替换为实际提交计算作业时的种子文件名。计算完成后可以使用File Transfer功能将结果文件下载至本地工作目录。")
            a(b, attrs("href", "https://takooctopus.github.io/2020-06-20-linux-MS-3/"), "阅读原文")
        }
    )
}
