package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGrublinuxZztianPost(): Post {
    return Post(
        "grublinux-zztian",
        "开机进入GRUB不要慌，命令行也可启动Linux - zztian - 博客园",
        "2021-09-20",
        "原文待补充：开机进入GRUB不要慌，命令行也可启动Linux - zztian - 博客园",
        { b =>
            h2(b, "开机进入GRUB不要慌，命令行也可启动Linux - zztian - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/zztian/p/10289083.html#:~:text=%E5%BC%80%E6%9C%BA%E8%BF%9B%E5%85%A5GRUB%E4%B8%8D%E8%A6%81%E6%85%8C%EF%BC%8C%E5%91%BD%E4%BB%A4%E8%A1%8C%E4%B9%9F%E5%8F%AF%E5%90%AF%E5%8A%A8Linux%201%20%E9%A6%96%E5%85%88%E5%88%A9%E7%94%A8%20ls%20%E5%91%BD%E4%BB%A4%EF%BC%8C%E6%89%BE%E5%88%B0Ubuntu%E5%AE%89%E8%A3%85%E5%9C%A8%E5%93%AA%E4%B8%AA%E7%A3%81%E7%9B%98%E5%88%86%E5%8C%BA%EF%BC%9B%202,%E6%89%BE%E5%88%B0Linux%E7%9A%84%2Fboot%E5%88%86%E5%8C%BA%EF%BC%8C%E4%BB%A5%E5%8F%8A%2F%E6%A0%B9%E5%88%86%E5%8C%BA%E6%89%80%E5%9C%A8%E7%9A%84%E7%A3%81%E7%9B%98%E4%BD%8D%E7%BD%AE%203%20%E6%8C%87%E5%AE%9ALinux%E5%86%85%E6%A0%B8%EF%BC%8C%E5%8F%8A%2F%E6%89%80%E5%9C%A8%E5%88%86%E5%8C%BA%204%20initrd%E5%91%BD%E4%BB%A4%E6%8C%87%E5%AE%9Ainitrd%E6%96%87%E4%BB%B6%205%20boot%E5%BC%95%E5%AF%BC%E7%B3%BB%E7%BB%9F%EF%BC%8C%E7%BB%93%E6%9D%9F"), "阅读原文")
        }
    )
}
