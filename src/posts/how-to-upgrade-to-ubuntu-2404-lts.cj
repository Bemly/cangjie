package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowToUpgradeToUbuntu2404LtsPost(): Post {
    return Post(
        "how-to-upgrade-to-ubuntu-2404-lts",
        "How to Upgrade to Ubuntu 24.04 LTS",
        "2024-09-26",
        "从Ubuntu 22.04或23.10升级到24.04 LTS的完整教程，包括图形界面和命令行两种方式。",
        { b =>
            h2(b, "Getting 24.04 LTS when you are already using Ubuntu")
            p(b, "There are two ways to get the new version: Install Ubuntu 24.04 afresh, which deletes your existing data and applications to give you a fresh new system; or Upgrade to Ubuntu 24.04 from 22.04 or 23.10, where your existing data and most of the applications remain as it is.")
            h2(b, "Things to know about upgrading")
            p(b, "All your data and most of the application settings remain the same in the existing system. However, making a data backup on an external disk is always recommended. If you choose to upgrade, you cannot downgrade without reinstalling. Some PPA and external repositories you have added may not work in the newer versions. You need around 3-4 GB of free space on your root partition and a good internet connection.")
            h2(b, "Precheck before you start")
            p(b, "The upgrade to 24.04 is available from 22.04 and 23.10. If you are using Ubuntu 20.04, you will have to upgrade to 22.04 first and then upgrade to 24.04. Check your Ubuntu version with lsb_release -a to ensure you are using 22.04 or 23.10.")
            h2(b, "Method 1: Upgrade graphically")
            p(b, "Go to Software & Updates, and under the Updates tab, make sure that Notify me of a new Ubuntu version is set to Long-term support release. Open a terminal and run: sudo apt update && sudo apt dist-upgrade. Then run sudo update-manager to open the Software Updater, which should notify you of the availability of Ubuntu 24.04.")
            p(b, "Click on Upgrade and follow the on-screen instructions. It will download the release upgrade tool, disable third-party repositories, and prepare your system for the upgrade. The entire process may take anywhere from 20 minutes to 90 minutes depending on your internet speed.")
            h2(b, "Method 2: Upgrade using command line")
            p(b, "Make sure you have the update-manager-core package installed: sudo apt install update-manager-core. Ensure that you have Prompt set to LTS in the file /etc/update-manager/release-upgrades. Install any pending software updates with sudo apt update && sudo apt dist-upgrade, then run sudo do-release-upgrade to start the upgrade process.")
            h2(b, "Post upgrade check")
            p(b, "After upgrading, go to Software & Updates and re-enable PPAs that were disabled during the upgrade. Run sudo apt update to check for any invalid repositories. If you see errors about repositories not being found for Noble, disable those repositories.")
            h2(b, "Troubleshooting")
            p(b, "If the upgrade fails, check if you can still boot into the system or access recovery mode with an older kernel. If that does not work, use your backup to do a fresh installation of the new version and restore data from the backup.")
            a(b, attrs("href", "https://itsfoss.com/upgrade-ubuntu-version/"), "阅读原文")
        }
    )
}
