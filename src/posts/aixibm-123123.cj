package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAixibm123123Post(): Post {
    return Post(
        "aixibm-123123",
        "AIX环境下升级IBM小型机的微码版本 - 小明123_123 - 博客园",
        "2024-09-30",
        "介绍在有HMC和无HMC两种情况下，升级IBM Power System服务器微码版本的完整步骤。",
        { b =>
            h2(b, "HMC介绍")
            p(b, "IBM硬件管理控制台（Hardware Management Console）提供了标准的用户接口来配置和管理Power System系列服务器以及服务器上的分区。HMC的功能包括创建和维护分区、显示虚拟操作系统会话终端、监控和记录硬件更换、服务器开/关机、远程管理和Service Agent Call-Home功能等。")
            h2(b, "有HMC情况下的升级步骤")
            p(b, "首先把微码补丁从IBM网站下载到个人电脑。老款Pseries主机的微码下载通常提供AIX、DOS和RPM三种格式，新款主机的微码格式为RPM和ISO。使用HMC升级应选用RPM和ISO两种格式的文件，刻录到光盘中。")
            p(b, "将光盘插入HMC光驱后，打开Licensed Internal Code Maintenance目录树，点击Licensed Internal Code Updates标签，在Contents区域点击Change Internal Code，选择要升级微码的系统，选择Select advanced features，然后选择Accept完成升级。升级操作大约需要10分钟。")
            h2(b, "无HMC情况下的升级步骤")
            p(b, "对应AIX格式的微码文件，需要通过FTP上传到AIX主机（注意使用bin方式），然后添加执行权限并执行该文件，文件会变成img格式。对应RPM格式的文件，上传到AIX后执行rpm -ivh --ignoreos命令，img格式的firmware文件会出现在/tmp/fwupdate目录下。")
            h2(b, "执行微码升级")
            p(b, "命令方式：进入img所在目录，执行/usr/lpp/diagnostics/bin/update_flash -f 3R080425.img命令，大约需要10分钟或更多时间。重启后用lsmcode -A命令检查升级是否成功。")
            p(b, "diag菜单方式：在AIX命令行输入diag进入菜单，依次选择Tasks and Service Aids、Update and Manage Flash，选择Validate and Update System Firmware，然后选择img所在的目录和文件名即可开始升级。")
            p(b, "注意：如果主机分了LPAR，建议还是通过HMC来完成微码升级会比较好。")
            a(b, attrs("href", "https://www.cnblogs.com/xmzhang/articles/17756575.html"), "阅读原文")
        }
    )
}
