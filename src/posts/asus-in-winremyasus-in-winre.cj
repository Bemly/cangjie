package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAsusInWinremyasusInWinrePost(): Post {
    return Post(
        "asus-in-winremyasus-in-winre",
        "修复ASUS in WinRE教程_myasus in winre不见了-CSDN博客",
        "2024-01-07",
        "重装系统后ASUS in WinRE入口不见了，本文介绍如何修复华硕笔记本的WinRE恢复入口。",
        { b =>
            h2(b, "修复ASUS in WinRE教程")
            p(b, "注意：此教程仅适用于ASUS in WinRE相关分区未损坏的情况，如果已经丢失或损坏\"RECOVERY\"、\"RESTORE\"、\"MYASUS\"三个分区中的任何一个，请先恢复这些分区。")
            h2(b, "前言")
            p(b, "暑假入手了天选三，发现是win11家庭版，本来想着家庭版将就一下无所谓，结果在使用的过程中发现相较于专业版真的是不能比，于是自己就重装了系统，发现ASUS in WinRE入口不见了，折腾半天最后成功修复。")
            h2(b, "原理")
            p(b, "在网上找了很多教程，发现相关成品教程真的是少的可怜，只能是东拼西凑。其实对于只是入口丢失的情况还是比较好解决的。")
            p(b, "首先根据网上的教程以及自己搜索后，发现这个winre和\"C:\\Recovery\\WindowsRE\\Winre.wim\"以及\"C:\\Windows\\System32\\Recovery\"下的文件有着很大的关联。")
            p(b, "那么按照正常情况，当一个能够进入ASUS in WinRE的系统通过这个恢复后，C盘肯定就会被重置为在\"RESTORE\"分区下\"ASUS.swm\"内的备用系统镜像。")
            p(b, "所以\"C:\\Recovery\\WindowsRE\\Winre.wim\"以及\"C:\\Windows\\System32\\Recovery\"下的文件肯定就会被重写，按照常理肯定不能因为使用恢复后把入口就丢了。因此我们可以确定，在\"RESTORE\"分区下\"ASUS.swm\"内的备用系统镜像中的这些文件肯定就指向的ASUS in WinRE，以至于在恢复后入口不会丢失（有点类似于套娃）。")
            h2(b, "修复方法")
            p(b, "准备工具：Diskgenius。打开Diskgenius，切入RESTORE分区下的备用系统镜像中的恢复入口即可完成修复。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_46202629/article/details/127361660"), "阅读原文")
        }
    )
}
