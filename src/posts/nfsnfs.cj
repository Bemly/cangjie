package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNfsnfsPost(): Post {
    return Post(
        "nfsnfs",
        "nfs简介_nfs协议-CSDN博客",
        "2023-12-12",
        "NFS是基于UDP/IP协议的应用，利用RPC实现跨平台的文件共享",
        { b =>
            h2(b, "NFS简介")
            p(b, "NFS是基于UDP/IP协议的应用，其实现主要是采用远程过程调用RPC机制，RPC提供了一组与机器、操作系统以及低层传送协议无关的存取远程文件的操作。RPC采用了XDR的支持，XDR是一种与机器无关的数据描述编码的协议，以独立于任意机器体系结构的格式对网上传送的数据进行编码和解码，支持在异构系统之间数据的传送。")
            h2(b, "NFS特点")
            p(b, "NFS（Network File System）即网络文件系统，是FreeBSD支持的文件系统中的一种，它允许网络中的计算机之间通过TCP/IP网络共享资源。在NFS的应用中，本地NFS的客户端应用可以透明地读写位于远端NFS服务器上的文件，就像访问本地文件一样。")
            p(b, "NFS适用于Linux与Unix之间实现文件共享，不能实现Linux与Windows间的文件共享功能。NFS是运行在应用层的协议，其监听于2049/tcp和2049/udp套接字上。NFS服务只能基于IP进行认证。")
            h2(b, "NFS的应用场景")
            p(b, "多个机器共享一台CDROM或其他设备；在大型网络中配置一台中心NFS服务器用来放置所有用户的home目录；不同客户端可在NFS上观看影视文件，节省本地空间；在客户端完成的工作数据可以备份保存到NFS服务器上用户自己的路径下。")
            h2(b, "NFS体系组成")
            p(b, "NFS体系至少有两个主要部分：一台NFS服务器和若干台客户机。客户机通过TCP/IP网络远程访问存放在NFS服务器上的数据。在NFS服务器正式启用前，需要根据实际环境和需求配置一些NFS参数。")
            h2(b, "NFS工作机制")
            p(b, "NFS服务器端运行着四个进程：idmapd实现用户帐号的集中映射；mountd用于验证客户端是否在允许访问此NFS文件系统的客户端列表中；nfsd是NFS的守护进程，监听在2049/tcp和2049/udp端口上；portmapper是NFS服务器的RPC服务，监听于111/TCP和111/UDP套接字上。")
            p(b, "RPC（Remote Procedure Call Protocol），远程过程调用协议，是一种通过网络从远程计算机程序上请求服务而不需要了解底层网络技术的协议。RPC协议假定某些传输协议的存在，如TCP或UDP，为通信程序之间携带信息数据。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_58130165/article/details/120477879"), "阅读原文")
        }
    )
}
