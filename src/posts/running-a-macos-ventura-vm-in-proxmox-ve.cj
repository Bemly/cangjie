package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRunningAMacosVenturaVmInProxmoxVePost(): Post {
    return Post(
        "running-a-macos-ventura-vm-in-proxmox-ve",
        "Running a MacOS Ventura VM in ProxMox VE",
        "2024-02-29",
        "在ProxMox VE虚拟化平台上安装和运行MacOS Ventura虚拟机的完整教程。",
        { b =>
            h2(b, "Running a MacOS Ventura VM in ProxMox VE")
            p(b, "NOTE: MacOS higher than version 12 requires a CPU with AVX2 instruction support.")
            h3(b, "准备工作")
            p(b, "下载MacOS Ventura .iso镜像文件（或自行制作），下载KVM OpenCore引导加载器。解压下载的KVM OpenCore bootloader .gz文件，将Ventura和KVM OpenCore .iso文件上传到Proxmox ISO库。")
            h3(b, "创建虚拟机")
            p(b, "登录ProxMox Web UI，右键点击节点名称选择创建VM。名称输入MacOSVentura，VM ID设为1300。OS类型选择Other，ISO Image选择KVM OpenCore .iso。System选项中Graphic card设为VMware compatible，BIOS设为OVMF (UEFI)，取消Pre-Enroll Keys勾选，勾选Add EFI Disk，Machine设为q35，SCSI Controller设为VirtIO SCSI。")
            p(b, "Hard Disk设置Bus/Device为VirtIO Block，Disk size为64GB，Cache为Write back (unsafe)。CPU设置Cores为4，Type为host。Memory设置为4096MB。Network Model设为VMware vmxnet3。")
            h3(b, "配置VM参数")
            p(b, "添加CD/DVD Drive挂载MacOS Ventura .iso。设置Boot Order将KVM OpenCore磁盘设为第一启动项。编辑VM配置文件，在配置文件底部添加Apple SMC设备参数（包含Apple版权保护字符串）。根据CPU类型（Intel或AMD）添加不同的CPU参数。删除两个.iso文件的,media=cdrom标记并添加cache=unsafe。")
            h3(b, "安装MacOS")
            p(b, "启动VM后在OpenCore菜单选择UEFI Shell，切换到Ventura.iso磁盘并运行System\\Library\\CoreServices\\boot.efi启动安装程序。在Disk Utility中选择VirtIO Block Media，格式化为APFS格式。然后选择Install macOS Ventura进行安装，VM会多次重启。")
            p(b, "完成区域选择、键盘设置、Apple ID设置（选择稍后设置）、创建用户名密码等初始设置步骤后，即可进入MacOS 13 Ventura桌面。")
            h3(b, "配置无OpenCore光盘启动")
            p(b, "在MacOS VM中下载KVM OpenCore EFI文件夹和MountEFI工具。运行MountEFI挂载EFI分区，将KVM OpenCoreEFI文件夹复制到EFI分区中。关闭VM后在ProxMox中分离并移除OpenCore硬盘，重新启动VM验证无需OpenCore光盘即可正常引导进入Ventura。")
            a(b, attrs("href", "https://i12bretro.github.io/tutorials/0775.html"), "阅读原文")
        }
    )
}
