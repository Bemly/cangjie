package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVisualStudioCodeVscodeMoxPost(): Post {
    return Post(
        "visual-studio-code-vscode-mox",
        "Visual Studio Code (VSCode) 常见问题：国内无法下载/下载慢_mox...",
        "2021-05-26",
        "VSCode在国内下载慢的解决方案：将下载链接中的域名替换为国内镜像即可飞速下载。",
        { b =>
            h2(b, "Visual Studio Code (VSCode) 常见问题：国内无法下载/下载慢")
            p(b, "Visual Studio Code 是一款非常流行的轻量级代码编辑器，但很多国内用户在官网下载时会遇到速度极慢甚至下载失败的问题。这是因为 VSCode 官方的下载服务器位于海外，国内访问速度受到限制。")
            p(b, "解决方案其实非常简单：使用国内镜像。微软提供了 Azure CDN 的国内镜像节点，只需要将下载链接中的域名替换即可。")
            h2(b, "具体操作步骤")
            p(b, "第一步：访问 VSCode 官网（https://code.visualstudio.com/），找到需要下载的文件，点击下载。")
            p(b, "第二步：在浏览器或下载软件中找到下载地址，复制下载链接。链接一般以 https://az764295.vo.msecnd.net/stable/ 开头。")
            p(b, "第三步：将链接中的域名部分 az764295.vo.msecnd.net 替换为国内镜像域名 vscode.cdn.azure.cn。")
            p(b, "替换后的新链接形如：https://vscode.cdn.azure.cn/stable/... 使用这个链接下载，速度会有质的飞跃。")
            p(b, "这个方法适用于 Windows、Mac 和 Linux 所有平台的 VSCode 下载。只需替换域名，其余路径保持不变即可。")
            a(b, attrs("href", "https://blog.csdn.net/moxiaoxuanyu/article/details/113185863"), "阅读原文")
        }
    )
}
