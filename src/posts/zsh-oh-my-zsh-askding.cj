package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZshOhMyZshAskdingPost(): Post {
    return Post(
        "zsh-oh-my-zsh-askding",
        "zsh + oh-my-zsh 主题预览 - askDing - 博客园",
        "2024-09-09",
        "oh-my-zsh主题预览，展示各种zsh主题的效果图和配置说明。",
        { b =>
            h2(b, "zsh + oh-my-zsh 主题预览")
            h3(b, "The Themes")
            p(b, "robbyrussell是默认主题，由Robby Russell使用。以下按字母顺序列出其他主题：")
            p(b, "af-magic、afowler、agnoster（需要安装patched fonts，可选设置DEFAULT_USER隐藏user@hostname信息）、alanpeabody、amuse（配合tmux和powerline plugin使用，可能需要安装patched powerline fonts）、arrow、aussiegeek、avit、awesomepanda、bira、blinks（需要设置Solarized）。")
            p(b, "bureau主题在右侧提示符显示git状态和Node.js版本（如果使用nvm）。candy、clean、cloud、crunch、cypher、dallas、darkblood、daveverwer、dieter、dogenpunk、dpoggi、eastwood等主题各有特色。")
            p(b, "evan是一个精简的顶部提示符。fishy是带git支持的fish shell提示符。flazz有git和vi-command模式支持。frisk、funky、gallifrey、gallois、garyblessington、gentoo、geoffgarside、gianu、gnzh、imajes、jnrowe、jreese等主题也各具风格。")
            p(b, "oh-my-zsh提供了丰富的主题选择，用户可以根据自己的喜好和终端环境选择合适的主题，打造个性化的命令行体验。")
            a(b, attrs("href", "https://www.cnblogs.com/askDing/p/6270269.html"), "阅读原文")
        }
    )
}
