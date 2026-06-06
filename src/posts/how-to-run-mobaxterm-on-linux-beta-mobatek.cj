package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowToRunMobaxtermOnLinuxBetaMobatekPost(): Post {
    return Post(
        "how-to-run-mobaxterm-on-linux-beta-mobatek",
        "How to run MobaXterm on Linux (beta) · Mobatek ...",
        "2023-10-17",
        "虽然MobaXterm没有官方Linux版本，但可以通过Wine兼容层在Linux上运行。",
        { b =>
            h2(b, "How to run MobaXterm on Linux (beta)")
            p(b, "Disclaimer: there is no official Linux version of MobaXterm for the moment. MobaXterm is only supported under Windows operating system. This article is about trying to run MobaXterm under Linux thanks to a compatibility layer software called Wine.")
            p(b, "Although there is no Linux version of MobaXterm available for the moment, we have recently tried to make MobaXterm work on Linux by using the great Wine compatibility layer. We brought many modifications into MobaXterm in order for it to run smoothly under Wine. Of course, there are still missing features and it has not been tested extensively, but the latest MobaXterm Preview version is the first which can be run on Linux using Wine.")
            p(b, "For the moment, the following features work in our early tests: local terminal, X11 server, SSH / telnet / rlogin / rsh / VNC / FTP / SFTP sessions, TFTP, FTP, HTTP daemons, graphical SSH browser, remote SSH monitoring, SSH tunnels, multi-execution and macros. The following features do not work for the moment: RDP sessions, package manager and professional customizer.")
            h2(b, "安装步骤")
            p(b, "1. Download and install Wine. Wine is included into your Linux distribution most of the time, so you may use your favorite package management system to install it (\"apt\", \"yum\", ...).")
            p(b, "2. Download the preview portable version.")
            p(b, "3. Open a terminal and unzip the MobaXterm package using the \"unzip\" command, or use a graphical archive manager to unzip it.")
            p(b, "4. Open a terminal, go to the directory where you unzipped MobaXterm program and type \"wine MobaXterm_versionXXX.exe\"")
            raw(b, "<blockquote>Note: You can also use the installable version, then open a terminal, go to the directory where you unzipped MobaXterm program and type \"msiexec -i MobaXterm_installer_versionXXX.msi\"</blockquote>")
            p(b, "If you have an error message saying that you need the \"wine32\" package or the \"wine:i386\" package, please follow the instructions in order to install it. If you start Wine for the first time, this can take a few minutes to configure it. MobaXterm should then start and you can now use it, even if it has limited features.")
            p(b, "This is a first Wine-compatible version of MobaXterm, it is limited and it has not been thoroughly tested, so you may expect different results depending on your distribution settings.")
            a(b, attrs("href", "https://download.mobatek.net/mobaxterm-on-linux.html"), "阅读原文")
        }
    )
}
