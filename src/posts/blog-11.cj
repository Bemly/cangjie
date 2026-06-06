package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog11Post(): Post {
    return Post(
        "blog-11",
        "7 Simple Ways to Free Up Space on Ubuntu and Linux",
        "2021-09-26",
        "介绍七种清理 Ubuntu 系统释放磁盘空间的简单方法，涵盖命令行和 GUI 工具。",
        { b =>
            p(b, "Over time, any operating system can become cluttered as programs are added and removed. If your hard disk has limited space, freeing up disk space becomes a necessity. This article shows some of the easiest tricks to clean up your Ubuntu system and get more space.")
            h2(b, "Check free space on Ubuntu")
            p(b, "Use the Disk Usage Analyzer tool. Search it in the menu and run the tool. You should see the disk space used and the free space remaining.")
            h2(b, "1. Get rid of packages that are no longer required")
            p(b, "The apt-get autoremove command removes libs and packages that were installed automatically to satisfy the dependencies of an installed package. It also removes old Linux kernels that were installed automatically in the system upgrade.")
            raw(b, "<pre><code>sudo apt-get autoremove</code></pre>")
            h2(b, "2. Uninstall unnecessary applications")
            p(b, "We all have a few games and applications that we hardly use. You can remove a program in Ubuntu from the software centre or use the command below:")
            raw(b, "<pre><code>sudo apt-get remove package-name1 package-name2</code></pre>")
            h2(b, "3. Clean up APT cache in Ubuntu")
            p(b, "Ubuntu uses APT for installing, removing and managing software on the system, and in doing so it keeps a cache of previously downloaded and installed packages even after they have been uninstalled. The APT package management system keeps a cache of DEB packages in /var/cache/apt/archives.")
            raw(b, "<pre><code>sudo apt-get autoclean\nsudo apt-get clean</code></pre>")
            h2(b, "4. Clear systemd journal logs")
            p(b, "Every Linux distribution has a logging mechanism. Over time, these logs take a considerable amount of disk space. You can clear logs older than certain days:")
            raw(b, "<pre><code>journalctl --disk-usage\nsudo journalctl --vacuum-time=3d</code></pre>")
            h2(b, "5. Remove older versions of Snap applications")
            p(b, "Snap packages are bigger in size. On top of that, Snap stores at least two older versions of the application. Alan Pope from Canonical has created a script to clean all the older versions of snap apps.")
            h2(b, "6. Clean the thumbnail cache")
            p(b, "Ubuntu automatically creates thumbnails for viewing in the file manager. It stores those thumbnails in ~/.cache/thumbnails. Over time, this cache can grow significantly.")
            raw(b, "<pre><code>rm -rf ~/.cache/thumbnails/*</code></pre>")
            h2(b, "7. Find and remove duplicate files")
            p(b, "You can use a GUI tool like FSlint or a command line tool like FDUPES to find and remove duplicate files in your system.")
            a(b, attrs("href", "https://itsfoss.com/free-up-space-ubuntu-linux/"), "阅读原文")
        }
    )
}
