package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWin10UefiasenaPost(): Post {
    return Post(
        "win10-uefiasena",
        "win10 UEFI引导恢复",
        "2021-10-02",
        "一次误删win10启动引导后的修复经历，使用Windows启动盘和bcdboot命令恢复UEFI引导。",
        { b =>
            p(b, "一直想在笔记本上装个双系统（win + linux deepin），结果安装完毕但是启动不了。上网查教程下载了easybcd编辑启动项，结果一不小心手滑把win10启动引导给删了，蜜汁自信地重启后系统无法启动。")
            h2(b, "UEFI引导系统工作原理")
            p(b, "EFI引导分区（ESP）必须存在于GPT磁盘中，用来存储EFI引导文件，采用FAT32文件系统。主要文件结构是：efi/boot/bootx64.efi 和 efi/microsoft/boot/bcd。")
            p(b, "UEFI BIOS启动时，自动查找硬盘下引导分区的bootx64.efi，然后由bootx64.efi引导EFI下的BCD文件，由BCD引导指定系统文件（一般为C:\\Windows\\System32\\winload.efi）。")
            h2(b, "修复步骤")
            p(b, "首先保证BIOS里的启动模式是UEFI模式，插入Windows启动U盘后选择启动项进入安装界面。选择好语言后点击"修复计算机"，依次选择疑难解答->高级工具->命令提示符进入管理员模式。")
            p(b, "使用diskpart工具找到EFI分区：list disk列出所有磁盘，sel disk n选择磁盘，list par列出分区。找到大小一两百MB的引导分区后，用assign命令分配盘符。")
            h2(b, "修复引导")
            p(b, "使用bcdboot命令修复：bcdboot C:\\Windows /s O: /f UEFI。注意在PE环境下系统盘的盘符可能不是C，需要用dir命令确认实际盘符。执行成功后会提示"成功创建启动文件"。")
            p(b, "如果遇到"尝试复制启动文件失败"，检查系统盘盘符是否正确。在PE环境下盘符可能被重新分配，系统盘可能是D盘或其他盘符。")
            a(b, attrs("href", "https://blog.csdn.net/A_Sen_A/article/details/89545311"), "阅读原文")
        }
    )
}
